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
import peter.ic.kadry.repository.*;

@Controller
@RequestMapping("/staff/documents")
public class DocumentsController {
    final StaffRepository staffRepository;
    final CitizenshipRepository citizenshipRepository;
    final DocTypeRepository docTypeRepository;
    final EducationInfRepository educationInfRepository;
    final MilitaryServiceRepository militaryServiceRepository;
    final PersonalDocumentsRepository personalDocumentsRepository;
    final PositionRepository positionRepository;
    final RankRepository rankRepository;
    final DepartmentRepository departmentRepository;
    final UsersRepository usersRepository;

    public DocumentsController(StaffRepository staffRepository,
                               CitizenshipRepository citizenshipRepository,
                               DocTypeRepository docTypeRepository,
                               EducationInfRepository educationInfRepository,
                               MilitaryServiceRepository militaryServiceRepository,
                               PersonalDocumentsRepository personalDocumentsRepository,
                               PositionRepository positionRepository,
                               RankRepository rankRepository,
                               DepartmentRepository departmentRepository,
                               UsersRepository usersRepository) {
        this.staffRepository = staffRepository;
        this.citizenshipRepository = citizenshipRepository;
        this.docTypeRepository = docTypeRepository;
        this.educationInfRepository = educationInfRepository;
        this.militaryServiceRepository = militaryServiceRepository;
        this.personalDocumentsRepository = personalDocumentsRepository;
        this.positionRepository = positionRepository;
        this.rankRepository = rankRepository;
        this.departmentRepository = departmentRepository;
        this.usersRepository = usersRepository;
    }


    @GetMapping("")
    public String card(Model model) {
        User userAuth = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        Users user = usersRepository.findByUsername(userAuth.getUsername());
        model.addAttribute("user", user);

        return "staff.documents";
    }


    @GetMapping("/get")
    public String getCard(@RequestParam(defaultValue = "0") int id, Model model) {
        User userAuth = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        Users user = usersRepository.findByUsername(userAuth.getUsername());
        model.addAttribute("user", user);
        try {
            Staff staff = staffRepository.findById(id);
            if (staff.getDepartment().getCode() == user.getDepartment().getCode()) {
                model.addAttribute("staffProfile", staff);
                model.addAttribute("documentsCard", personalDocumentsRepository.findByStaffId(id));
            }
        } catch (Exception e) {
            model.addAttribute("error", e.getMessage());
        }


        return "staff.documents";
    }

    @PostMapping("add")
    public String addCard(PersonalDocuments personalDocuments, Model model) {
        User userAuth = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        Users user = usersRepository.findByUsername(userAuth.getUsername());
        model.addAttribute("user", user);

        model.addAttribute("documentsCard", personalDocumentsRepository.save(personalDocuments));

        return "staff.documents";
    }

}
