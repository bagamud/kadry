package peter.ic.kadry.controller;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import peter.ic.kadry.entity.EducationInformation;
import peter.ic.kadry.entity.Staff;
import peter.ic.kadry.entity.Users;
import peter.ic.kadry.repository.*;

@Controller
@RequestMapping("/profile/education")
public class EducationController {
    final StaffRepository staffRepository;
    final DocTypeRepository docTypeRepository;
    final EducationInfRepository educationInfRepository;
    final PersonalDocumentsRepository personalDocumentsRepository;
    final UsersRepository usersRepository;

    public EducationController(StaffRepository staffRepository,
                               DocTypeRepository docTypeRepository,
                               EducationInfRepository educationInfRepository,
                               PersonalDocumentsRepository personalDocumentsRepository,
                               UsersRepository usersRepository) {
        this.staffRepository = staffRepository;
        this.docTypeRepository = docTypeRepository;
        this.educationInfRepository = educationInfRepository;
        this.personalDocumentsRepository = personalDocumentsRepository;
        this.usersRepository = usersRepository;
    }

    @GetMapping("")
    public String getCard(@RequestParam(defaultValue = "0") int staffId, Model model) {
        User userAuth = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        Users user = usersRepository.findByUsername(userAuth.getUsername());
        model.addAttribute("user", user);
        try {
            Staff staff = staffRepository.findByStaffId(staffId);
            model.addAttribute("staffProfile", staff);
            if (staffId != 0) {
                model.addAttribute("educationInfoCard", educationInfRepository.findByStaffStaffId(staffId));
            }
        } catch (Exception e) {
            model.addAttribute("error", e.getMessage());
        }


        return "profile/education";
    }

    @PostMapping("/add")
    public String addCard(int staffId, EducationInformation educationInformation, Model model) {
        User userAuth = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        Users user = usersRepository.findByUsername(userAuth.getUsername());
        model.addAttribute("user", user);
        try {
            Staff staff = staffRepository.findByStaffId(staffId);
            model.addAttribute("staffProfile", staff);
            if (staffId != 0) {
                model.addAttribute("educationInfoCard", educationInfRepository.findByStaffStaffId(staffId));
            }
        } catch (Exception e) {
            model.addAttribute("error", e.getMessage());
        }

        model.addAttribute("educationInfoCard", educationInfRepository.save(educationInformation));

        return "profile/education";
    }

}
