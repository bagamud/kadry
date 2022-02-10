package peter.ic.kadry.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import peter.ic.kadry.repository.StaffRepository;

@Controller
@RequestMapping("/dashboard")
public class DashboardController {
    final StaffRepository staffRepository;

    public DashboardController(StaffRepository staffRepository) {
        this.staffRepository = staffRepository;
    }

    @GetMapping("")
    public String dashboard(Model model) {
        model.addAttribute("staff", staffRepository.findAll());
//        staffRepository.findAllByDepartment_code(160);
        return "dashboard";
    }
}
