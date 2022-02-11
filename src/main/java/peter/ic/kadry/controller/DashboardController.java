package peter.ic.kadry.controller;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import peter.ic.kadry.entity.Users;
import peter.ic.kadry.repository.DepartmentRepository;
import peter.ic.kadry.repository.StaffRepository;
import peter.ic.kadry.repository.UsersRepository;

@Controller
@RequestMapping("/dashboard")
public class DashboardController {
    final StaffRepository staffRepository;
    final DepartmentRepository departmentRepository;
    final UsersRepository usersRepository;

    public DashboardController(StaffRepository staffRepository,
                               DepartmentRepository departmentRepository,
                               UsersRepository usersRepository) {
        this.staffRepository = staffRepository;
        this.departmentRepository = departmentRepository;
        this.usersRepository = usersRepository;
    }

    @GetMapping("")
    public String dashboard(@RequestParam(defaultValue = "0") int department, Model model) {
        User userAuth = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        Users user = usersRepository.findByUsername(userAuth.getUsername());
        model.addAttribute("user", user);

        if (department != 0) {
            model.addAttribute("staff", staffRepository.findAllByServiceInfo_Department_code(department));
        }


        staffRepository.findAll();
        return "dashboard";
    }
}
