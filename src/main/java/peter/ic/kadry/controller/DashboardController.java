package peter.ic.kadry.controller;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import peter.ic.kadry.entity.Department;
import peter.ic.kadry.entity.PublicService;
import peter.ic.kadry.entity.Staff;
import peter.ic.kadry.entity.Users;
import peter.ic.kadry.repository.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/dashboard")
public class DashboardController {
    final StaffRepository staffRepository;
    final PublicServiceRepository publicServiceRepository;
    final DepartmentRepository departmentRepository;
    final InheritanceOfDepartmentsRepository inheritanceOfDepartmentsRepository;
    final UsersRepository usersRepository;

    public DashboardController(StaffRepository staffRepository,
                               PublicServiceRepository publicServiceRepository, DepartmentRepository departmentRepository,
                               InheritanceOfDepartmentsRepository inheritanceOfDepartmentsRepository, UsersRepository usersRepository) {
        this.staffRepository = staffRepository;
        this.publicServiceRepository = publicServiceRepository;
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
//        if (department != 0) {
//            ArrayList<Staff> staffList = new ArrayList<>();
//            for (PublicService publicService : publicServiceRepository.findAllByDepartment_CodeAndServiceStatusTrue(department)) {
//                staffList.add(publicService.getStaff());
//            }
//            model.addAttribute("staff", staffList);
//        }

//        if (department == user.getDepartment().getCode() || !inheritanceOfDepartmentsRepository.findInheritance(user.getDepartment().getCode()).contains(department)) {
//            model.addAttribute("hidden", "hidden");
//        }

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
