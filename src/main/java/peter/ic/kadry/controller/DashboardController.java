package peter.ic.kadry.controller;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import peter.ic.kadry.entity.Department;
import peter.ic.kadry.entity.Users;
import peter.ic.kadry.repository.DepartmentRepository;
import peter.ic.kadry.repository.InheritanceOfDepartmentsRepository;
import peter.ic.kadry.repository.StaffRepository;
import peter.ic.kadry.repository.UsersRepository;

import java.util.*;

@Controller
@RequestMapping("/dashboard")
public class DashboardController {
    final StaffRepository staffRepository;
    final DepartmentRepository departmentRepository;
    final InheritanceOfDepartmentsRepository inheritanceOfDepartmentsRepository;
    final UsersRepository usersRepository;

    public DashboardController(StaffRepository staffRepository,
                               DepartmentRepository departmentRepository,
                               InheritanceOfDepartmentsRepository inheritanceOfDepartmentsRepository, UsersRepository usersRepository) {
        this.staffRepository = staffRepository;
        this.departmentRepository = departmentRepository;
        this.inheritanceOfDepartmentsRepository = inheritanceOfDepartmentsRepository;
        this.usersRepository = usersRepository;
    }

    @GetMapping("")
    public String dashboard(@RequestParam(defaultValue = "0") int department, Model model) {
        User userAuth = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        Users user = usersRepository.findByUsername(userAuth.getUsername());
        model.addAttribute("user", user);

        model.addAttribute("departments", departmentRepository.findAllByActiveIsTrueOrderByCode());
        model.addAttribute("rootDep", departmentRepository.findAllByActiveIsTrueAndAnchor_NameOrderByCode("root"));

        Map<Department, List<Department>> depMenu = new HashMap<>();

        for (Department dep : departmentRepository.findAllByActiveIsTrueOrderByCode()) {
            ArrayList<Department> menuList = departmentRepository.findAllByActiveIsTrueAndParentCodeOrderByCode(dep.getCode());
            if (!menuList.isEmpty()) {
                depMenu.put(dep, menuList);
            }
        }

        model.addAttribute("depMenu", depMenu);
        if (department != 0) {
            model.addAttribute("staff", staffRepository.findAllByDepartment_code(department));
        }

        if (department == user.getDepartment().getCode() || !inheritanceOfDepartmentsRepository.findInheritance(user.getDepartment().getCode()).contains(department)) {
            model.addAttribute("hidden", "hidden");
        }

        return "dashboard";
    }

    @GetMapping("/search")
    public String search(@RequestParam(defaultValue = "") String searchRequest, Model model) {
        User userAuth = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        Users user = usersRepository.findByUsername(userAuth.getUsername());
        model.addAttribute("user", user);

        model.addAttribute("departments", departmentRepository.findAllByActiveIsTrueOrderByCode());
        model.addAttribute("rootDep", departmentRepository.findAllByActiveIsTrueAndAnchor_NameOrderByCode("root"));

        Map<Department, List<Department>> depMenu = new HashMap<>();

        for (Department dep : departmentRepository.findAll()) {
            ArrayList<Department> menuList = departmentRepository.findAllByActiveIsTrueAndParentCodeOrderByCode(dep.getCode());

            if (!menuList.isEmpty()) {
                depMenu.put(dep, menuList);
            }
        }
        model.addAttribute("depMenu", depMenu);

        if (!searchRequest.equals("")) {
            String[] fio = searchRequest.split(" ");

            String[] search = new String[]{"%", "%", "%"};
            System.arraycopy(fio, 0, search, 0, fio.length);
            fio = search;

            model.addAttribute("staff",
                    staffRepository.findAllByLastNameLikeIgnoreCaseAndFirstNameLikeIgnoreCaseAndMiddleNameLikeIgnoreCase(fio[0], fio[1], fio[2]));
        }
        return "dashboard";
    }
}
