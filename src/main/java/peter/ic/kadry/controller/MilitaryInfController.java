package peter.ic.kadry.controller;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import peter.ic.kadry.entity.MilitaryService;
import peter.ic.kadry.entity.Staff;
import peter.ic.kadry.entity.Users;
import peter.ic.kadry.repository.*;

@Controller
@RequestMapping("/profile/military")
public class MilitaryInfController {
    final StaffRepository staffRepository;
    final DocTypeRepository docTypeRepository;
    final MilitaryServiceRepository militaryServiceRepository;
    final PersonalDocumentsRepository personalDocumentsRepository;
    final UsersRepository usersRepository;

    public MilitaryInfController(StaffRepository staffRepository,
                                 DocTypeRepository docTypeRepository,
                                 MilitaryServiceRepository militaryServiceRepository,
                                 PersonalDocumentsRepository personalDocumentsRepository,
                                 UsersRepository usersRepository) {
        this.staffRepository = staffRepository;
        this.docTypeRepository = docTypeRepository;
        this.militaryServiceRepository = militaryServiceRepository;
        this.personalDocumentsRepository = personalDocumentsRepository;
        this.usersRepository = usersRepository;
    }

    @GetMapping("")
    public String card(Model model) {
        User userAuth = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        Users user = usersRepository.findByUsername(userAuth.getUsername());
        model.addAttribute("user", user);

        return "profile/military";
    }

    @GetMapping("/get")
    public String getCard(@RequestParam(defaultValue = "0") int id, Model model) {
        User userAuth = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        Users user = usersRepository.findByUsername(userAuth.getUsername());
        model.addAttribute("user", user);
        try {
            Staff staff = staffRepository.findById(id);
            if (user.getDepartment().getCode() == staff.getDepartment().getCode()) {
                model.addAttribute("staffProfile", staff);
                model.addAttribute("militariServiceCard", militaryServiceRepository.findByStaffId(id));

            }
        } catch (Exception e) {
            model.addAttribute("error", e.getMessage());
        }

        return "profile/military";
    }

    @PostMapping("/add")
    public String addCard(MilitaryService militaryService, Model model) {
        User userAuth = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        Users user = usersRepository.findByUsername(userAuth.getUsername());

        model.addAttribute("user", user);
        model.addAttribute("militariServiceCard", militaryServiceRepository.save(militaryService));
        return "profile/military";
    }


}
