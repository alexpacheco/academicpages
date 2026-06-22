---
layout: archive
title: "HPC Training Materials"
permalink: /repositories/
author_profile: true
---

All of my HPC Training materials are available on GitHub. If these are still useful, feel free to use, copy, modify them. Unless otherwise mentioned, the following are licensed under a Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.

<!-- Container mirroring the al-folio responsive card layout -->
<div style="display: flex; flex-wrap: wrap; gap: 20px; justify-content: space-between; margin-top: 30px;">
  {% if site.data.repositories %}
    {% for repo in site.data.repositories %}
      {% comment %} Splitting the 'username/repo' string to isolate the repository name for alt text {% endcomment %}
      {% assign repo_parts = repo.github | split: "/" %}
      {% assign username = repo_parts[0] %}
      {% assign repo_name = repo_parts[1] %}

      <div style="flex: 1 1 calc(50% - 20px); min-width: 300px; box-sizing: border-box;">
        <a href="https://github.com/{{ repo.github }}" target="_blank" rel="noopener noreferrer" style="text-decoration: none; display: block;">
          <img src="https://github-readme-stats.vercel.app/api/pin/?username={{ username }}&repo={{ repo_name }}&theme=default&show_owner=true" 
               alt="{{ repo_name }} repository card" 
               style="width: 100%; height: auto; border-radius: 5px; transition: transform 0.2s ease;" 
               onmouseover="this.style.transform='scale(1.02)'" 
               onmouseout="this.style.transform='scale(1)'" />
        </a>
      </div>
    {% endfor %}
  {% else %}
    <p>No repositories found. Please check your <em>_data/repositories.yml</em> configuration.</p>
  {% endif %}
</div>


