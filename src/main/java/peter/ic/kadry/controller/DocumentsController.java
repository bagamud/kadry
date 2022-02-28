package peter.ic.kadry.controller;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import peter.ic.kadry.entity.PersonalDocuments;
import peter.ic.kadry.entity.Staff;
import peter.ic.kadry.entity.Users;
import peter.ic.kadry.repository.DocTypeRepository;
import peter.ic.kadry.repository.PersonalDocumentsRepository;
import peter.ic.kadry.repository.StaffRepository;
import peter.ic.kadry.repository.UsersRepository;

@Controller
@RequestMapping("/profile/documents")
public class DocumentsController {
    final StaffRepository staffRepository;
    final DocTypeRepository docTypeRepository;
    final PersonalDocumentsRepository personalDocumentsRepository;
    final UsersRepository usersRepository;

    public DocumentsController(StaffRepository staffRepository,
                               DocTypeRepository docTypeRepository,
                               PersonalDocumentsRepository personalDocumentsRepository,
                               UsersRepository usersRepository) {
        this.staffRepository = staffRepository;
        this.docTypeRepository = docTypeRepository;
        this.personalDocumentsRepository = personalDocumentsRepository;
        this.usersRepository = usersRepository;
    }


    @GetMapping("")
    public String cardList(@RequestParam(defaultValue = "0") int id, Model model) {
        User userAuth = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        Users user = usersRepository.findByUsername(userAuth.getUsername());
        model.addAttribute("user", user);
        model.addAttribute("documentType", docTypeRepository.findAll());

        try {
            Staff staff = staffRepository.findById(id);
            model.addAttribute("staffProfile", staff);
            if (id != 0) {
                model.addAttribute("documentsList", personalDocumentsRepository.findByStaffId(id));
            }
        } catch (Exception e) {
            model.addAttribute("error", e.getMessage());
        }

        return "profile/documents";
    }

    @PostMapping("add")
    public String addCard(PersonalDocuments personalDocuments, Model model) {
        User userAuth = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        Users user = usersRepository.findByUsername(userAuth.getUsername());
        model.addAttribute("user", user);
        model.addAttribute("documentType", docTypeRepository.findAll());

        model.addAttribute("documentCard", personalDocumentsRepository.save(personalDocuments));

        return "profile/documents";
    }

    @PostMapping("inactive")
    public String makeInactive(PersonalDocuments personalDocuments, Model model) {
        User userAuth = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        Users user = usersRepository.findByUsername(userAuth.getUsername());
        model.addAttribute("user", user);

        personalDocuments.setActive(false);
        model.addAttribute("documentType", docTypeRepository.findAll());
        model.addAttribute("documentCard", personalDocumentsRepository.save(personalDocuments));

        return "profile/documents";
    }
}
