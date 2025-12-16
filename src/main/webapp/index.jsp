<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html lang="en" class="scroll-smooth">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nathirul Mubeen - DevOps Engineer</title>
    <meta name="description" content="Portfolio of Nathirul Mubeen, a specialized DevOps Engineer focusing on Automation, Cloud Infrastructure, and CI/CD.">
    
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&family=Poppins:wght@500;600;700;800&family=Space+Grotesk:wght@400;500;700&display=swap" rel="stylesheet">
    
    <!-- Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com"></script>
    
    <!-- Icons -->
    <script src="https://unpkg.com/lucide@latest"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/devicon.min.css">

    <script>
        tailwind.config = {
            theme: {
                extend: {
                    fontFamily: {
                        sans: ['Inter', 'sans-serif'],
                        heading: ['Poppins', 'sans-serif'],
                        mono: ['Space Grotesk', 'sans-serif'],
                    },
                    colors: {
                        brand: {
                            accent: '#7C5FD8',
                            dark: '#2E1F5C',
                            primary: '#4B3FA0',
                            secondary: '#2E5090',
                            light: '#F5F5F5',
                        }
                    },
                    backgroundImage: {
                        'hero-gradient': 'linear-gradient(135deg, #4B3FA0 0%, #2E5090 100%)',
                        'card-gradient': 'linear-gradient(135deg, #ffffff 0%, #f8faff 100%)',
                        'accent-gradient': 'linear-gradient(135deg, #2E5090 0%, #7C5FD8 100%)',
                    }
                }
            }
        }
    </script>

    <style>
        /* Custom Utilities */
        .glass-nav {
            background: rgba(255, 255, 255, 0.9);
            backdrop-filter: blur(10px);
            border-bottom: 1px solid rgba(0,0,0,0.05);
        }
        
        .text-gradient {
            background: linear-gradient(135deg, #4B3FA0 0%, #7C5FD8 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .blob {
            position: absolute;
            filter: blur(80px);
            z-index: -1;
            opacity: 0.4;
            animation: float 10s infinite ease-in-out;
        }

        @keyframes float {
            0% { transform: translate(0, 0); }
            50% { transform: translate(20px, 40px); }
            100% { transform: translate(0, 0); }
        }

        .skill-card:hover i {
            transform: scale(1.2);
            transition: transform 0.3s ease;
        }
    </style>
</head>
<body class="font-sans text-gray-800 bg-white antialiased selection:bg-brand-accent selection:text-white">

    <%
        // JSP Variables
        String currentYear = new SimpleDateFormat("yyyy").format(new Date());
        String userName = "Nathirul Mubeen";
        String userTitle = "DevOps Engineer";
        String userEmail = "nathiroffl@gmail.com";
        String userPhone = "7397493949";
        String linkedinUrl = "https://www.linkedin.com/in/nathirulmubeen-m";
        String githubUrl = "https://github.com/nathirkasim";
        String resumeFile = "NATHIRUL_RESUME.pdf";
    %>

    <!-- Navbar -->
    <nav class="fixed w-full z-50 glass-nav transition-all duration-300" id="navbar">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex justify-between items-center h-20">
                <div class="flex-shrink-0 flex items-center">
                    <a href="#" class="font-heading font-bold text-2xl tracking-tighter text-brand-dark">
                        NM<span class="text-brand-accent">.</span>
                    </a>
                </div>
                <div class="hidden md:flex space-x-8 items-center">
                    <a href="#about" class="text-sm font-medium text-gray-600 hover:text-brand-primary transition-colors">About</a>
                    <a href="#skills" class="text-sm font-medium text-gray-600 hover:text-brand-primary transition-colors">Tools</a>
                    <a href="#projects" class="text-sm font-medium text-gray-600 hover:text-brand-primary transition-colors">Projects</a>
                    <a href="#contact" class="px-5 py-2.5 rounded-full bg-brand-accent text-white text-sm font-medium hover:bg-brand-primary transition-all shadow-lg shadow-brand-accent/30">
                        Contact Me
                    </a>
                </div>
                <!-- Mobile menu button -->
                <div class="md:hidden flex items-center">
                    <button class="mobile-menu-button outline-none">
                        <i data-lucide="menu" class="w-6 h-6 text-gray-700"></i>
                    </button>
                </div>
            </div>
        </div>
        <!-- Mobile Menu -->
        <div class="hidden mobile-menu md:hidden bg-white border-b border-gray-100">
            <ul class="flex flex-col p-4 space-y-4">
                <li><a href="#about" class="block text-sm font-medium text-gray-700">About</a></li>
                <li><a href="#skills" class="block text-sm font-medium text-gray-700">Tools</a></li>
                <li><a href="#projects" class="block text-sm font-medium text-gray-700">Projects</a></li>
                <li><a href="#contact" class="block text-sm font-medium text-brand-accent">Contact Me</a></li>
            </ul>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="relative pt-32 pb-20 lg:pt-48 lg:pb-32 overflow-hidden">
        <div class="blob bg-purple-200 w-96 h-96 rounded-full top-0 left-0 -translate-x-1/2 -translate-y-1/2"></div>
        <div class="blob bg-blue-100 w-80 h-80 rounded-full bottom-0 right-0 translate-x-1/3 translate-y-1/3"></div>

        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 relative z-10 text-center">
            <span class="inline-block py-1 px-3 rounded-full bg-blue-50 text-brand-secondary text-xs font-mono font-semibold tracking-wide uppercase mb-6 border border-blue-100">
                Available for hire
            </span>
            <h1 class="text-5xl md:text-7xl font-heading font-extrabold text-gray-900 leading-tight mb-6">
                Automating the <br>
                <span class="text-gradient">Future of Cloud.</span>
            </h1>
            <p class="mt-4 max-w-2xl mx-auto text-xl text-gray-600 font-light leading-relaxed">
                Hi, I'm <span class="font-semibold text-gray-900"><%= userName %></span>. 
                A <%= userTitle %> specialized in building robust CI/CD pipelines, managing cloud infrastructure, and orchestrating containers for scalable applications.
            </p>
            <div class="mt-10 flex justify-center gap-4">
                <a href="#projects" class="px-8 py-4 rounded-lg bg-hero-gradient text-white font-medium shadow-xl shadow-brand-primary/30 hover:shadow-2xl hover:-translate-y-1 transition-all">
                    View My Work
                </a>
                <a href="<%= resumeFile %>" download 
                   class="px-8 py-4 rounded-lg bg-white text-gray-800 font-medium border border-gray-200 hover:border-brand-primary hover:text-brand-primary transition-all">
                    Download CV
                </a>
            </div>

            <!-- Tech Scroll -->
            <div class="mt-20 pt-10 border-t border-gray-100">
                <p class="text-sm text-gray-400 font-medium uppercase tracking-widest mb-8">Powering Infrastructure With</p>
                <div class="flex flex-wrap justify-center gap-8 md:gap-12 opacity-60 grayscale hover:grayscale-0 transition-all duration-500">
                    <i class="devicon-amazonwebservices-plain-wordmark text-4xl"></i>
                    <i class="devicon-docker-plain-wordmark text-4xl"></i>
                    <i class="devicon-kubernetes-plain-wordmark text-4xl"></i>
                    <i class="devicon-jenkins-line text-4xl"></i>
                    <i class="devicon-terraform-plain-wordmark text-4xl"></i>
                    <i class="devicon-linux-plain text-4xl"></i>
                    <i class="devicon-ansible-plain-wordmark text-4xl"></i>
                </div>
            </div>
        </div>
    </section>

    <!-- Expertise Section -->
    <section id="about" class="py-20 bg-gray-50">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="grid grid-cols-1 lg:grid-cols-2 gap-16 items-center">
                <div>
                    <h2 class="text-3xl md:text-4xl font-heading font-bold text-gray-900 mb-6">
                        Bridging the gap between <span class="text-brand-accent">Development</span> and <span class="text-brand-secondary">Operations</span>.
                    </h2>
                    <p class="text-lg text-gray-600 mb-6 leading-relaxed">
                        With a deep understanding of the software development lifecycle, I engineer systems that are reliable, scalable, and secure. My goal is to eliminate manual toil and accelerate delivery speeds.
                    </p>
                    <ul class="space-y-4 mt-8">
                        <li class="flex items-start">
                            <div class="flex-shrink-0 h-6 w-6 rounded-full bg-green-100 flex items-center justify-center mt-1">
                                <i data-lucide="check" class="w-4 h-4 text-green-600"></i>
                            </div>
                            <p class="ml-4 text-gray-700">99.9% Uptime Architecture Design</p>
                        </li>
                        <li class="flex items-start">
                            <div class="flex-shrink-0 h-6 w-6 rounded-full bg-green-100 flex items-center justify-center mt-1">
                                <i data-lucide="check" class="w-4 h-4 text-green-600"></i>
                            </div>
                            <p class="ml-4 text-gray-700">Automated Security Compliance (DevSecOps)</p>
                        </li>
                        <li class="flex items-start">
                            <div class="flex-shrink-0 h-6 w-6 rounded-full bg-green-100 flex items-center justify-center mt-1">
                                <i data-lucide="check" class="w-4 h-4 text-green-600"></i>
                            </div>
                            <p class="ml-4 text-gray-700">Cost Optimization for Cloud Resources</p>
                        </li>
                    </ul>
                </div>
                <div class="grid grid-cols-2 gap-6">
                    <div class="bg-white p-6 rounded-2xl shadow-sm border border-gray-100">
                        <div class="w-12 h-12 bg-blue-50 rounded-lg flex items-center justify-center mb-4 text-brand-secondary">
                            <i data-lucide="cloud" class="w-6 h-6"></i>
                        </div>
                        <h3 class="font-heading font-bold text-xl mb-2">Cloud Native</h3>
                        <p class="text-sm text-gray-500">Expertise in AWS & Azure ecosystems, utilizing serverless and managed services.</p>
                    </div>
                    <div class="bg-white p-6 rounded-2xl shadow-sm border border-gray-100 mt-8">
                        <div class="w-12 h-12 bg-purple-50 rounded-lg flex items-center justify-center mb-4 text-brand-accent">
                            <i data-lucide="git-branch" class="w-6 h-6"></i>
                        </div>
                        <h3 class="font-heading font-bold text-xl mb-2">CI/CD</h3>
                        <p class="text-sm text-gray-500">Building robust pipelines with Jenkins, GitHub Actions, and GitLab CI.</p>
                    </div>
                    <div class="bg-white p-6 rounded-2xl shadow-sm border border-gray-100">
                        <div class="w-12 h-12 bg-green-50 rounded-lg flex items-center justify-center mb-4 text-green-600">
                            <i data-lucide="container" class="w-6 h-6"></i>
                        </div>
                        <h3 class="font-heading font-bold text-xl mb-2">IaC</h3>
                        <p class="text-sm text-gray-500">Infrastructure as Code using Terraform and Ansible for reproducible environments.</p>
                    </div>
                    <div class="bg-white p-6 rounded-2xl shadow-sm border border-gray-100 mt-8">
                        <div class="w-12 h-12 bg-orange-50 rounded-lg flex items-center justify-center mb-4 text-orange-600">
                            <i data-lucide="shield-check" class="w-6 h-6"></i>
                        </div>
                        <h3 class="font-heading font-bold text-xl mb-2">Monitoring</h3>
                        <p class="text-sm text-gray-500">Observability setups using Prometheus, Grafana, and ELK Tools.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Tech Tools Section -->
    <section id="skills" class="py-20">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="text-center mb-16">
                <h2 class="text-3xl font-heading font-bold text-gray-900">My Toolkit</h2>
                <p class="mt-4 text-gray-600">Tools and technologies I use to build resilient infrastructure.</p>
            </div>

            <div class="grid grid-cols-2 md:grid-cols-4 lg:grid-cols-6 gap-6">
                <%
                    String[] skills = {
                        "kubernetes:Kubernetes:devicon-kubernetes-plain colored",
                        "docker:Docker:devicon-docker-plain colored",
                        "aws:AWS:devicon-amazonwebservices-plain-wordmark colored",
                        "terraform:Terraform:devicon-terraform-plain colored",
                        "jenkins:Jenkins:devicon-jenkins-line colored",
                        "python:Python:devicon-python-plain colored",
                        "bash:Bash:devicon-bash-plain text-gray-700",
                        "grafana:Grafana:devicon-grafana-plain colored",
                        "git:Git:devicon-git-plain colored",
                        "linux:Linux:devicon-linux-plain text-gray-700",
                        "ansible:Ansible:devicon-ansible-plain colored",
                        "nginx:Nginx:devicon-nginx-plain colored"
                    };
                    
                    for (String skill : skills) {
                        String[] parts = skill.split(":");
                        String id = parts[0];
                        String name = parts[1];
                        String iconClass = parts[2];
                %>
                <div class="skill-card group p-6 rounded-xl bg-gray-50 border border-gray-100 flex flex-col items-center justify-center hover:bg-white hover:shadow-lg transition-all cursor-default">
                    <i class="<%= iconClass %> text-5xl mb-3 transition-transform"></i>
                    <span class="font-medium text-gray-700"><%= name %></span>
                </div>
                <% } %>
            </div>
        </div>
    </section>

    <!-- Projects Section -->
    <section id="projects" class="py-20 bg-gray-50">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex flex-col md:flex-row justify-between items-end mb-12">
                <div>
                    <h2 class="text-3xl font-heading font-bold text-gray-900">Featured Projects</h2>
                    <p class="mt-4 text-gray-600">A selection of infrastructure projects I've engineered.</p>
                </div>
                <a href="<%= githubUrl %>" target="_blank" class="hidden md:flex items-center text-brand-accent font-medium hover:text-brand-primary">
                    View GitHub <i data-lucide="arrow-right" class="ml-2 w-4 h-4"></i>
                </a>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
                <!-- Project 1 -->
                <div class="bg-white rounded-2xl overflow-hidden shadow-sm hover:shadow-xl transition-all duration-300 border border-gray-100 group">
                    <div class="h-48 bg-gray-100 relative overflow-hidden">
                        <div class="absolute inset-0 bg-brand-dark/5 group-hover:bg-brand-dark/0 transition-all"></div>
                        <div class="absolute inset-4 bg-white rounded-lg shadow-sm p-4 border border-gray-200 flex items-center justify-center">
                             <span class="text-gray-400 font-mono text-sm">Project Thumbnail 01</span>
                        </div>
                    </div>
                    <div class="p-6">
                        <h3 class="font-heading font-bold text-xl text-gray-900 mb-2">Project Title 01</h3>
                        <p class="text-gray-600 text-sm mb-4 line-clamp-3">
                            Brief description of project 01 goes here. Explain the problem you solved, the technologies you used, and the impact it had on the infrastructure or deployment process.
                        </p>
                        <div class="flex flex-wrap gap-2 mb-6">
                            <span class="px-2 py-1 bg-blue-50 text-blue-700 text-xs font-medium rounded">Tech 1</span>
                            <span class="px-2 py-1 bg-purple-50 text-purple-700 text-xs font-medium rounded">Tech 2</span>
                            <span class="px-2 py-1 bg-gray-100 text-gray-700 text-xs font-medium rounded">Tech 3</span>
                        </div>
                        <a href="#" class="inline-flex items-center text-sm font-semibold text-brand-accent hover:text-brand-primary">
                            Case Study <i data-lucide="external-link" class="ml-2 w-4 h-4"></i>
                        </a>
                    </div>
                </div>

                <!-- Project 2 -->
                <div class="bg-white rounded-2xl overflow-hidden shadow-sm hover:shadow-xl transition-all duration-300 border border-gray-100 group">
                    <div class="h-48 bg-gray-100 relative overflow-hidden">
                        <div class="absolute top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2">
                            <i data-lucide="folder" class="w-16 h-16 text-gray-300"></i>
                        </div>
                    </div>
                    <div class="p-6">
                        <h3 class="font-heading font-bold text-xl text-gray-900 mb-2">Project Title 02</h3>
                        <p class="text-gray-600 text-sm mb-4 line-clamp-3">
                            Brief description of project 02 goes here. Explain the problem you solved, the technologies you used, and the impact it had on the infrastructure or deployment process.
                        </p>
                        <div class="flex flex-wrap gap-2 mb-6">
                            <span class="px-2 py-1 bg-orange-50 text-orange-700 text-xs font-medium rounded">Tech 1</span>
                            <span class="px-2 py-1 bg-gray-100 text-gray-700 text-xs font-medium rounded">Tech 2</span>
                            <span class="px-2 py-1 bg-blue-50 text-blue-700 text-xs font-medium rounded">Tech 3</span>
                        </div>
                        <a href="#" class="inline-flex items-center text-sm font-semibold text-brand-accent hover:text-brand-primary">
                            View Config <i data-lucide="external-link" class="ml-2 w-4 h-4"></i>
                        </a>
                    </div>
                </div>

                <!-- Project 3 -->
                <div class="bg-white rounded-2xl overflow-hidden shadow-sm hover:shadow-xl transition-all duration-300 border border-gray-100 group">
                    <div class="h-48 bg-gray-100 relative overflow-hidden flex items-center justify-center">
                        <i data-lucide="code-2" class="w-16 h-16 text-gray-300"></i>
                    </div>
                    <div class="p-6">
                        <h3 class="font-heading font-bold text-xl text-gray-900 mb-2">Project Title 03</h3>
                        <p class="text-gray-600 text-sm mb-4 line-clamp-3">
                            Brief description of project 03 goes here. Explain the problem you solved, the technologies you used, and the impact it had on the infrastructure or deployment process.
                        </p>
                        <div class="flex flex-wrap gap-2 mb-6">
                            <span class="px-2 py-1 bg-yellow-50 text-yellow-700 text-xs font-medium rounded">Tech 1</span>
                            <span class="px-2 py-1 bg-gray-100 text-gray-700 text-xs font-medium rounded">Tech 2</span>
                            <span class="px-2 py-1 bg-green-50 text-green-700 text-xs font-medium rounded">Tech 3</span>
                        </div>
                        <a href="#" class="inline-flex items-center text-sm font-semibold text-brand-accent hover:text-brand-primary">
                            Live Demo <i data-lucide="external-link" class="ml-2 w-4 h-4"></i>
                        </a>
                    </div>
                </div>
            </div>
            
            <div class="mt-8 text-center md:hidden">
                <a href="<%= githubUrl %>" target="_blank" class="flex items-center justify-center text-brand-accent font-medium hover:text-brand-primary">
                    View GitHub <i data-lucide="arrow-right" class="ml-2 w-4 h-4"></i>
                </a>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="contact" class="py-20 relative overflow-hidden">
        <div class="absolute inset-0 bg-brand-dark -z-10"></div>
        <div class="absolute inset-0 bg-accent-gradient opacity-90 -z-10"></div>
        
        <div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
            <h2 class="text-3xl font-heading font-bold text-white mb-6">Let's Automate Together</h2>
            <p class="text-blue-100 mb-10 max-w-2xl mx-auto">
                Looking to optimize your infrastructure or need help with a cloud migration? 
                I'm currently available for freelance projects and consulting.
            </p>
            
            <div class="bg-white rounded-2xl p-8 shadow-2xl text-left">
                <form action="submitContact.jsp" method="post" class="space-y-6">
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                        <div>
                            <label for="name" class="block text-sm font-medium text-gray-700 mb-1">Name</label>
                            <input type="text" id="name" name="name" required class="w-full px-4 py-3 rounded-lg border border-gray-300 focus:ring-2 focus:ring-brand-accent focus:border-brand-accent outline-none transition-all" placeholder="John Doe">
                        </div>
                        <div>
                            <label for="email" class="block text-sm font-medium text-gray-700 mb-1">Email</label>
                            <input type="email" id="email" name="email" required class="w-full px-4 py-3 rounded-lg border border-gray-300 focus:ring-2 focus:ring-brand-accent focus:border-brand-accent outline-none transition-all" placeholder="john@example.com">
                        </div>
                    </div>
                    <div>
                        <label for="message" class="block text-sm font-medium text-gray-700 mb-1">Message</label>
                        <textarea id="message" name="message" rows="4" required class="w-full px-4 py-3 rounded-lg border border-gray-300 focus:ring-2 focus:ring-brand-accent focus:border-brand-accent outline-none transition-all" placeholder="Tell me about your project..."></textarea>
                    </div>
                    <button type="submit" class="w-full py-4 bg-brand-dark text-white font-bold rounded-lg hover:bg-brand-primary transition-colors shadow-lg">
                        Send Message
                    </button>
                </form>
            </div>
            
            <div class="mt-12 flex justify-center space-x-8">
                <a href="<%= linkedinUrl %>" target="_blank" class="text-blue-100 hover:text-white transition-colors" title="LinkedIn">
                    <i data-lucide="linkedin" class="w-8 h-8"></i>
                </a>
                <a href="<%= githubUrl %>" target="_blank" class="text-blue-100 hover:text-white transition-colors" title="GitHub">
                    <i data-lucide="github" class="w-8 h-8"></i>
                </a>
                <a href="tel:<%= userPhone %>" class="text-blue-100 hover:text-white transition-colors" title="Call Me">
                    <i data-lucide="phone" class="w-8 h-8"></i>
                </a>
                <a href="mailto:<%= userEmail %>" class="text-blue-100 hover:text-white transition-colors" title="Email Me">
                    <i data-lucide="mail" class="w-8 h-8"></i>
                </a>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="bg-gray-900 py-8">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 flex flex-col md:flex-row justify-between items-center">
            <div class="mb-4 md:mb-0">
                <span class="text-xl font-heading font-bold text-white">NM<span class="text-brand-accent">.</span></span>
            </div>
            <div class="text-gray-400 text-sm">
                &copy; <%= currentYear %> <%= userName %>. All rights reserved.
            </div>
        </div>
    </footer>

    <script>
        // Initialize Lucide Icons
        lucide.createIcons();

        // Mobile Menu Toggle
        const btn = document.querySelector("button.mobile-menu-button");
        const menu = document.querySelector(".mobile-menu");

        btn.addEventListener("click", () => {
            menu.classList.toggle("hidden");
        });

        // Navbar Scroll Effect
        window.addEventListener('scroll', function() {
            const navbar = document.getElementById('navbar');
            if (window.scrollY > 0) {
                navbar.classList.add('shadow-md');
            } else {
                navbar.classList.remove('shadow-md');
            }
        });
    </script>
</body>
</html>
