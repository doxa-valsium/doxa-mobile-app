import 'package:doxa_mobile_app/data/mock_database/mock_selectables.dart' as mock_selectables;
import 'package:doxa_mobile_app/models/models.dart';

List<Company> companies = [
  Company(
    title: "Google",
    industry: mock_selectables.industries[0],
    bio:
        "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    website: "www.google.org",
    location: Location(city: mock_selectables.cities[0], country: mock_selectables.countries[0]),
    email: 'abc@email.com',
    phone: "098755362836",
    recruiters: [],
  ),
  Company(
    title: "Facebook",
    industry: mock_selectables.industries[1],
    bio:
        "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    website: "www.facebook.org",
    location: Location(city: mock_selectables.cities[1], country: mock_selectables.countries[0]),
    email: 'email@email.com',
    phone: "098755362836",
    recruiters: [],
  ),
];

List<User> users = [
  Recruiter(
    userId: "0",
    firstName: "Faaz",
    lastName: "lastName",
    email: "faz@email.com",
    isOnboarded: true,
    isVerified: true,
    gender: mock_selectables.genders[0],
    dateOfBirth: DateTime.now().subtract(const Duration(days: 365 * 50)),
    isAdmin: true,
    company: companies[0],
  ),
  Recruiter(
    userId: "1",
    firstName: "Abuzar",
    lastName: "Rasool",
    email: "raz@email.com",
    gender: mock_selectables.genders[0],
    isOnboarded: true,
    isVerified: true,
    dateOfBirth: DateTime.now().subtract(const Duration(days: 365 * 30)),
    isAdmin: false,
    company: companies[0],
  ),
  Recruiter(
    userId: "2",
    firstName: "Hussain",
    lastName: "Abbas",
    email: "huss@email.com",
    isOnboarded: true,
    isVerified: true,
    gender: mock_selectables.genders[0],
    dateOfBirth: DateTime.now().subtract(const Duration(days: 365 * 18)),
    isAdmin: true,
    company: companies[1],
  ),
  Recruiter(
    userId: "3",
    firstName: "Jawwaaad",
    lastName: "Rajani",
    email: "raj@email.com",
    isOnboarded: true,
    isVerified: true,
    gender: mock_selectables.genders[0],
    dateOfBirth: DateTime.now().subtract(const Duration(days: 365 * 40)),
    isAdmin: false,
    company: companies[1],
  ),
  Candidate(
    userId: "4",
    firstName: "Asad",
    lastName: "Raza",
    email: "a@email.com",
    isOnboarded: true,
    isVerified: true,
    gender: mock_selectables.genders[3],
    dateOfBirth: DateTime.now().subtract(const Duration(days: 365 * 40)),
    bio:
        "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    education: [
      Education(
          institute: mock_selectables.institutes[0],
          qualification: Qualification(
            degree: mock_selectables.degrees[0],
            major: mock_selectables.majors[0],
            isCompleted: true,
          )),
    ],
    experiance: [
      Experiance(
          company: companies[0],
          employmentType: mock_selectables.employmentType[0],
          industry: mock_selectables.industries[0],
          title: mock_selectables.jobTitles[0],
          location: Location(city: mock_selectables.cities[0], country: mock_selectables.countries[0]),
          startDate: DateTime.now().subtract(const Duration(days: 365 * 5)),
          endDate: DateTime.now().subtract(const Duration(days: 365 * 4))),
    ],
    skills: [mock_selectables.skills[0], mock_selectables.skills[1]],
    preferrence: Preferrence(
        employmentType: mock_selectables.employmentType[0],
        workplaceType: mock_selectables.workplaceType[0],
        locations: [Location(city: mock_selectables.cities[0], country: mock_selectables.countries[0])],
        industries: [mock_selectables.industries[0]],
        jobRoles: [
          mock_selectables.jobTitles[0],
        ],
        salarayRange: const SalarayRange(max: 500000, min: 10000)),
  ),
  Candidate(
    isOnboarded: true,
    isVerified: true,
    profilePictureUrl: "https://i.pravatar.cc/300",
    publications: [
      Publication(title: "How to Get Gurls", field: "Sex", journal: "Sex Note", date: DateTime.now()),
    ],
    awards: [
      Award(title: "Tatta", awardedBy: "Asad Raza", date: DateTime.now()),
    ],
    certifications: [
      Certification(title: "EE God", dated: DateTime.now(), affiliation: "BAsit"),
    ],
    externalLinks: const [
      ExternalLink(
        tag: "Facebook",
        url: "www.facebook.com",
      ),
    ],
    userId: "5",
    firstName: "Hamza",
    lastName: "Inrfan",
    email: "hi@email.com",
    gender: mock_selectables.genders[2],
    dateOfBirth: DateTime.now().subtract(const Duration(days: 365 * 33)),
    bio:
        "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    education: [
      Education(
          institute: mock_selectables.institutes[0],
          qualification: Qualification(
            degree: mock_selectables.degrees[0],
            major: mock_selectables.majors[0],
            isCompleted: true,
          )),
    ],
    experiance: [
      Experiance(
          company: companies[0],
          employmentType: mock_selectables.employmentType[0],
          industry: mock_selectables.industries[0],
          title: mock_selectables.jobTitles[2],
          location: Location(city: mock_selectables.cities[0], country: mock_selectables.countries[0]),
          startDate: DateTime.now().subtract(const Duration(days: 365 * 5)),
          endDate: DateTime.now().subtract(const Duration(days: 365 * 4))),
    ],
    skills: [mock_selectables.skills[0], mock_selectables.skills[1]],
    preferrence: Preferrence(
        employmentType: mock_selectables.employmentType[0],
        workplaceType: mock_selectables.workplaceType[0],
        locations: [Location(city: mock_selectables.cities[0], country: mock_selectables.countries[0])],
        industries: [mock_selectables.industries[0]],
        jobRoles: [
          mock_selectables.jobTitles[0],
        ],
        salarayRange: const SalarayRange(max: 500000, min: 10000)),
  ),
  Candidate(
    isOnboarded: true,
    isVerified: true,
    profilePictureUrl: "https://i.pravatar.cc/300",
    certifications: [
      Certification(title: "EE God", dated: DateTime.now(), affiliation: "BAsit"),
    ],
    externalLinks: const [
      ExternalLink(
        tag: "Facebook",
        url: "www.facebook.com",
      ),
    ],
    userId: "6",
    firstName: "Taha",
    lastName: "Aslam",
    email: "ta@email.com",
    gender: mock_selectables.genders[2],
    dateOfBirth: DateTime.now().subtract(const Duration(days: 365 * 13)),
    bio:
        "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    education: [
      Education(
          institute: mock_selectables.institutes[0],
          qualification: Qualification(
            degree: mock_selectables.degrees[0],
            major: mock_selectables.majors[0],
            isCompleted: true,
          )),
    ],
    experiance: [
      Experiance(
          company: companies[0],
          employmentType: mock_selectables.employmentType[0],
          industry: mock_selectables.industries[0],
          title: mock_selectables.jobTitles[1],
          location: Location(city: mock_selectables.cities[0], country: mock_selectables.countries[0]),
          startDate: DateTime.now().subtract(const Duration(days: 365 * 5)),
          endDate: DateTime.now().subtract(const Duration(days: 365 * 4))),
    ],
    skills: [mock_selectables.skills[0], mock_selectables.skills[1]],
    preferrence: Preferrence(
        employmentType: mock_selectables.employmentType[0],
        workplaceType: mock_selectables.workplaceType[0],
        locations: [Location(city: mock_selectables.cities[0], country: mock_selectables.countries[0])],
        industries: [mock_selectables.industries[0]],
        jobRoles: [
          mock_selectables.jobTitles[0],
        ],
        salarayRange: const SalarayRange(max: 500000, min: 10000)),
  ),
];
List<Job> jobs = [
  Job(
    title: "HR Manager",
    headline: "Need a HR Manager",
    employmentType: mock_selectables.employmentType[0],
    workplaceType: mock_selectables.workplaceType[0],
    salarayRange: const SalarayRange(min: 50000, max: 10000),
    yearsExperianceRequired: 5,
    requiredQualification: [
      Qualification(
        degree: mock_selectables.degrees[1],
        major: mock_selectables.majors[1],
        isCompleted: true,
      ),
    ],
    prefferedQualification: [
      Qualification(
        degree: mock_selectables.degrees[0],
        major: mock_selectables.majors[0],
        isCompleted: true,
      ),
    ],
    industry: mock_selectables.industries[0],
    skills: [mock_selectables.skills[0], mock_selectables.skills[1]],
    isActive: true,
    company: companies[0],
    openedByRecruiterId: '0',
  ),
  Job(
    title: "IT Manager",
    headline: "Need a IT Manager",
    employmentType: mock_selectables.employmentType[1],
    workplaceType: mock_selectables.workplaceType[1],
    salarayRange: const SalarayRange(min: 60000, max: 20000),
    yearsExperianceRequired: 4,
    requiredQualification: [
      Qualification(
        degree: mock_selectables.degrees[0],
        major: mock_selectables.majors[0],
        isCompleted: true,
      ),
    ],
    prefferedQualification: [
      Qualification(
        degree: mock_selectables.degrees[1],
        major: mock_selectables.majors[1],
        isCompleted: true,
      ),
    ],
    industry: mock_selectables.industries[0],
    skills: [mock_selectables.skills[0], mock_selectables.skills[1]],
    isActive: true,
    company: companies[0],
    openedByRecruiterId: '1',
  ),
  Job(
    title: "Software Engineer",
    headline: "Need a HR Manager",
    employmentType: mock_selectables.employmentType[0],
    workplaceType: mock_selectables.workplaceType[0],
    salarayRange: const SalarayRange(min: 500000, max: 100000),
    yearsExperianceRequired: 5,
    requiredQualification: [
      Qualification(
        degree: mock_selectables.degrees[3],
        major: mock_selectables.majors[3],
        isCompleted: true,
      ),
    ],
    prefferedQualification: [
      Qualification(
        degree: mock_selectables.degrees[2],
        major: mock_selectables.majors[2],
        isCompleted: true,
      ),
      Qualification(
        degree: mock_selectables.degrees[1],
        major: mock_selectables.majors[1],
        isCompleted: true,
      ),
    ],
    industry: mock_selectables.industries[2],
    skills: [mock_selectables.skills[0], mock_selectables.skills[1]],
    isActive: true,
    company: companies[0],
    openedByRecruiterId: '0',
  ),
  Job(
    title: "SCRUM Master",
    headline: "Need a SCRUM Master",
    employmentType: mock_selectables.employmentType[2],
    workplaceType: mock_selectables.workplaceType[2],
    salarayRange: const SalarayRange(min: 600000, max: 200000),
    yearsExperianceRequired: 6,
    requiredQualification: [
      Qualification(
        degree: mock_selectables.degrees[1],
        major: mock_selectables.majors[1],
        isCompleted: true,
      ),
    ],
    prefferedQualification: [
      Qualification(
        degree: mock_selectables.degrees[1],
        major: mock_selectables.majors[1],
        isCompleted: true,
      ),
    ],
    industry: mock_selectables.industries[4],
    skills: [mock_selectables.skills[5], mock_selectables.skills[3]],
    isActive: true,
    company: companies[0],
    openedByRecruiterId: '1',
  ),
  Job(
    title: "UI/UX Designer",
    headline: "Need a UI/UX Designer",
    employmentType: mock_selectables.employmentType[3],
    workplaceType: mock_selectables.workplaceType[3],
    salarayRange: const SalarayRange(min: 60000, max: 20000),
    yearsExperianceRequired: 2,
    requiredQualification: [
      Qualification(
        degree: mock_selectables.degrees[1],
        major: mock_selectables.majors[1],
        isCompleted: true,
      ),
    ],
    prefferedQualification: [
      Qualification(
        degree: mock_selectables.degrees[2],
        major: mock_selectables.majors[2],
        isCompleted: true,
      ),
    ],
    industry: mock_selectables.industries[2],
    skills: [mock_selectables.skills[1], mock_selectables.skills[4]],
    isActive: true,
    company: companies[1],
    openedByRecruiterId: '0',
  ),
];
