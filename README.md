**Note: This project has been submitted for a university assignment at the University of Warwick. Any replication or reuse of this work without permission is strictly prohibited for educational purposes only.**

🔐 **Secure Virtualized Container Deployment**  

**Cyber Security for Virtualization Systems**

**Overview**  
This project focuses on securing a **Dockerized application** consisting of a **web server** and a **database server**. The report highlights security implementations at 
**build-time and run-time**, functional and security test cases, and **audit recommendations** to strengthen containerized applications.  

**Test Cases**  
✅ **Functional Testing**  
- 🔄 **Deployment Verification** – Ensure Dockerfiles & docker-compose work correctly.  
- 🌐 **Application Availability** – Verify container accessibility & exposed ports.  
- 💾 **Data Persistence** – Test storage consistency across container restarts.  
- ⚡ **Performance & Load Testing** – Simulate stress scenarios.  
- 🔄 **Backup & Recovery** – Verify data integrity after restore.  

**Security Testing**  
- 🛡 **Source Image Validation** – Verify trusted images.  
- 🕵️ **Vulnerability Scans** – Use **docker-bench-security, Clair, Trivy**.  
- 🚫 **Privilege Escalation Prevention** – Enforce least privilege access.  
- 🔍 **Security Profile Configuration** – SELinux, AppArmor, Seccomp.  
- 🌍 **Network Security** – Close unnecessary ports, restrict access.  
- 📜 **Logging & Monitoring** – Detect unauthorized logins & system alerts.  

**Security Implementations**  
**Build-Time Security**  
- 🏗 **Multi-Stage Builds** – Reduce image size & attack surface.  
- 🔄 **Non-Root Users** – Limit privileges in the **dbserver** container.  
- 📦 **Minimal Base Images** – Replace **CentOS 7** with **AlmaLinux Minimal**.  
- 🔄 **Environment Variables & Configs** – Secure Dockerfiles & Makefiles.  

**Run-Time Security**  
- 🔐 **Container Isolation** – Enforce **separate networks & IP management**.  
- 🚧 **Privilege Restrictions** – `no-new-privileges` & **capabilities drop**.  
- 📜 **SELinux & Seccomp** – Implement access control policies.  
- 🔄 **Volumes & Data Persistence** – Ensure backup integrity.  
- 📊 **Resource Limits & Health Checks** – Prevent resource exhaustion & failures.  

**Audit & Security Tools**  
🔍 **Auditing Methods:**  
- 🛡 **Image Scanning** – Identify vulnerabilities with security tools.  
- 🔄 **Continuous Monitoring** – Set up **alerts & policy checks**.  
- 📜 **Code Reviews** – Analyze **Dockerfiles & configurations**.  
- 🖥 **Host System Audit** – Identify security risks in host systems.  

 **Tools Used:**  
- ✅ **Lynis** – Host security audit.  
- ✅ **Docker-Bench Security** – Security best practices.  

**Additional Enhancements**  
✅ **XSS Prevention** – Secure **index.php** from cross-site scripting.  
✅ **SQL Injection Protection** – Parameterized input validation.  
✅ **Security Awareness** – Training developers on **container security best practices**.  

### Conclusion
This project ensures **a secure, scalable, and optimized** deployment for containerized applications. With **best practices in DevSecOps**, it reduces risks, **protects sensitive data**, and enhances the **reliability of virtualized systems**.  
