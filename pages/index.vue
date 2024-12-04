<template>
  <div class="portfolio-container">
    <!-- Section d'introduction -->
    <section class="intro">
      <h1>Abir Ben Khedher</h1>
      <p>Développeur Full-Stack | Passionné par les technologies web et l'IA</p>
      <button class="cta" @click="goToProjects">Voir mes projets</button>
    </section>

    <!-- Section À propos de moi -->
    <section class="about">
      <h2>À propos de moi</h2>
      <p>
        Je suis u nedéveloppeur passionnée par les nouvelles technologies et l'innovation. J'aime résoudre des problèmes complexes et créer des solutions efficaces.
        Avec une formation en informatique et plusieurs années d'expérience dans le développement de sites web et d'applications, je cherche toujours à apprendre et à me perfectionner.
      </p>
    </section>

    <!-- Section Compétences -->
    <section class="skills">
      <h2>Compétences</h2>
      <div class="skill-set">
        <div class="skill">
          <h3>Développement Frontend</h3>
          <p>HTML, CSS, JavaScript, Vue.js, Nuxt.js</p>
        </div>
        <div class="skill">
          <h3>Développement Backend</h3>
          <p>Node.js, Express, Python, Django</p>
        </div>
        <div class="skill">
          <h3>Base de données</h3>
          <p>MongoDB, MySQL, PostgreSQL</p>
        </div>
        <div class="skill">
          <h3>DevOps</h3>
          <p>Docker, Kubernetes, CI/CD</p>
        </div>
      </div>
    </section>
    

    <!-- Section Mes Projets -->
    <section class="projects">
      <h2>Mes Projets</h2>
      <div class="project-card" v-for="(project, index) in projects" :key="index">
        <h3>{{ project.title }}</h3>
        <p>{{ project.description }}</p>
        <button @click="viewProjectDetails(project)">Voir détails</button>
      </div>
    </section>

    <!-- Section Contact -->
    <section class="contact">
      <h2>Contactez-moi</h2>
      <form @submit.prevent="sendMessage">
        <input type="text" v-model="name" placeholder="Votre nom" required />
        <input type="email" v-model="email" placeholder="Votre email" required />
        <textarea v-model="message" placeholder="Votre message" required></textarea>
        <button type="submit">Envoyer</button>
      </form>
    </section>

    <!-- Section Footer -->
    <footer>
      <p>&copy; 2024 Abir Ben Khedher. Tous droits réservés.</p>
    </footer>
  </div>
</template>

<script>
export default {
  data() {
    return {
      name: '',
      email: '',
      message: '',
      projects: [
        {  title: 'Application IOT', description: 'application de detection des animaux' },
        {  title: 'Site WEB', description: 'Site E commerce marketplace' },
      ]
      
    };
  },
  methods: {
    goToProjects() {
      window.scrollTo({ top: document.querySelector('.projects').offsetTop, behavior: 'smooth' });
    },
    viewProjectDetails(project) {
      alert(`Détails du projet: ${project.title}`);
    },
    sendMessage() {
      alert('Message envoyé avec succès!');
    }
  }
};
</script>

<style scoped>
/* Styles globaux */
body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
  background-color: #121212; /* Noir */
  color: #f5f5f5; /* Gris clair */
}

/* Section d'introduction */
.intro {
  text-align: center;
  padding: 100px 20px;
  background-color: #d8c8b8; /* Beige */
  animation: fadeIn 1s ease-in;
}

.intro h1 {
  font-size: 3em;
  opacity: 0;
  animation: fadeIn 2s forwards;
}

.intro p {
  font-size: 1.2em;
  opacity: 0;
  animation: fadeIn 2s 0.5s forwards;
}

.cta {
  background-color: #b28e73; /* Beige foncé */
  color: white;
  border: none;
  padding: 10px 20px;
  font-size: 1em;
  cursor: pointer;
  transition: background-color 0.3s;
}

.cta:hover {
  background-color: #9a7a5b;
  transform: scale(1.05);
}

/* Section À propos de moi */
.about {
  padding: 60px 20px;
  background-color: #d8c8b8; /* Beige */
  opacity: 0;
  animation: fadeIn 2s 1s forwards;
}

.about h2 {
  text-align: center;
  font-size: 2.5em;
  margin-bottom: 20px;
}

.about p {
  font-size: 1.2em;
  line-height: 1.6;
  max-width: 800px;
  margin: 0 auto;
  text-align: justify;
}

/* Section Compétences */
.skills {
  padding: 60px 20px;
  background-color: #d8c8b8; /* Beige */
}

.skills h2 {
  text-align: center;
  font-size: 2.5em;
  margin-bottom: 40px;
}

.skill-set {
  display: flex;
  justify-content: space-around;
  flex-wrap: wrap;
}

.skill {
  background-color: #b28e73; /* Beige foncé */
  border-radius: 8px;
  padding: 20px;
  margin: 10px;
  width: 200px;
  text-align: center;
  color: white;
}

.skill h3 {
  font-size: 1.5em;
}

.skill p {
  font-size: 1.1em;
}

/* Section Expérience */
.experience {
  padding: 60px 20px;
  background-color: #d8c8b8; /* Beige */
}

.experience h2 {
  text-align: center;
  font-size: 2.5em;
  margin-bottom: 40px;
}

.experience-item {
  background-color: #b28e73; /* Beige foncé */
  border-radius: 8px;
  padding: 20px;
  margin: 10px 0;
}

.experience-item h3 {
  font-size: 1.8em;
}

.experience-item p {
  font-size: 1.2em;
  color: #f5f5f5;
}

/* Section Mes Projets */
.projects {
  padding: 60px 20px;
  background-color: #d8c8b8; /* Beige */
}

.projects h2 {
  text-align: center;
  font-size: 2.5em;
  margin-bottom: 40px;
}

.project-card {
  background-color: #b28e73; /* Beige foncé */
  border-radius: 8px;
  padding: 20px;
  text-align: center;
  margin: 20px;
  transition: transform 0.3s ease;
  opacity: 0;
  animation: fadeIn 2s 1.5s forwards;
  cursor: pointer;
}

.project-card:hover {
  transform: scale(1.05);
}

.project-card img {
  max-width: 100%;
  border-radius: 8px;
}

.project-card h3 {
  font-size: 1.8em;
  margin: 15px 0;
}

.project-card p {
  font-size: 1.2em;
  margin-bottom: 20px;
}

.project-card button {
  background-color: #121212; /* Noir */
  color: white;
  border: none;
  padding: 10px 20px;
  font-size: 1.2em;
  cursor: pointer;
  transition: background-color 0.3s;
}

.project-card button:hover {
  background-color: #9a7a5b;
}

/* Section Contact */
.contact {
  padding: 60px 20px;
  background-color: #d8c8b8; /* Beige */
}

.contact h2 {
  text-align: center;
  font-size: 2.5em;
  margin-bottom: 40px;
}

.contact form {
  display: flex;
  flex-direction: column;
  align-items: center;
}

.contact input,
.contact textarea {
  background-color: #f5f5f5;
  border: none;
  padding: 15px;
  margin: 10px 0;
  width: 80%;
  font-size: 1.2em;
  border-radius: 8px;
}

.contact button {
  background-color: #b28e73; /* Beige foncé */
  color: white;
  border: none;
  padding: 10px 20px;
  font-size: 1.2em;
  cursor: pointer;
  transition: background-color 0.3s;
}

.contact button:hover {
  background-color: #9a7a5b;
}

/* Footer */
footer {
  padding: 20px;
  background-color: #121212; /* Noir */
  text-align: center;
  color: #f5f5f5;
}

footer p {
  font-size: 1em;
}

/* Animations */
@keyframes fadeIn {
  0% { opacity: 0; }
  100% { opacity: 1; }
}

/* Media Queries */
@media (max-width: 768px) {
  .intro h1 {
    font-size: 2.5em;
  }

  .intro p {
    font-size: 1em;
  }

  .cta {
    font-size: 1em;
    padding: 10px 15px;
  }

  .skill-set {
    flex-direction: column;
    align-items: center;
  }

  .project-card {
    width: 80%;
  }

  .contact input,
  .contact textarea {
    width: 90%;
  }
}
</style>
