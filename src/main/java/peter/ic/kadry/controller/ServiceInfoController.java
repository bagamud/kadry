package peter.ic.kadry.controller;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import peter.ic.kadry.entity.ServiceInfo;
import peter.ic.kadry.entity.Users;
import peter.ic.kadry.repository.*;

@Controller
@RequestMapping("/staff/service")
public class ServiceInfoController {
    final StaffRepository staffRepository;
    final CitizenshipRepository citizenshipRepository;
    final DocTypeRepository docTypeRepository;
    final EducationInfRepository educationInfRepository;
    final MilitaryServiceRepository militaryServiceRepository;
    final PersonalDocumentsRepository personalDocumentsRepository;
    final PositionRepository positionRepository;
    final RankRepository rankRepository;
    final ServiceInfoRepository serviceInfoRepository;
    final StaffIDCardRepository staffIDCardRepository;
    final DepartmentRepository departmentRepository;
    final UsersRepository usersRepository;

    public ServiceInfoController(StaffRepository staffRepository,
                                 CitizenshipRepository citizenshipRepository,
                                 DocTypeRepository docTypeRepository,
                                 EducationInfRepository educationInfRepository,
                                 MilitaryServiceRepository militaryServiceRepository,
                                 PersonalDocumentsRepository personalDocumentsRepository,
                                 PositionRepository positionRepository,
                                 RankRepository rankRepository,
                                 ServiceInfoRepository serviceInfoRepository,
                                 StaffIDCardRepository staffIDCardRepository,
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
        this.serviceInfoRepository = serviceInfoRepository;
        this.staffIDCardRepository = staffIDCardRepository;
        this.departmentRepository = departmentRepository;
        this.usersRepository = usersRepository;
    }

    @GetMapping("")
    public String card(Model model) {
        User userAuth = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        Users user = usersRepository.findByUsername(userAuth.getUsername());
        model.addAttribute("user", user);

        return "staff.service";
    }

    @GetMapping("/get")
    public String getCard(@RequestParam(defaultValue = "0") String snils, Model model) {
        User userAuth = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        Users user = usersRepository.findByUsername(userAuth.getUsername());
        model.addAttribute("user", user);

        model.addAttribute("serviceCard", serviceInfoRepository.findByStaff_SNILS(snils));

        return "staff.service";
    }

    @PostMapping("/add")
    public String addCard(ServiceInfo serviceInfo, Model model) {
        User userAuth = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        Users user = usersRepository.findByUsername(userAuth.getUsername());
        model.addAttribute("user", user);

        model.addAttribute("serviceCard", serviceInfoRepository.save(serviceInfo));

        return "staff.service";
    }

}
