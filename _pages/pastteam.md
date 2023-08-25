---
layout: page
title: Past Team
permalink: /pastteam
comments: false
---

{% for role in site.pastroles %}

<div class="page-header mt-5">
    <h1 class="page-title">{{ role.role }}</h1>
</div>
<div class="list-authors mt-1">
{% for id in role.members %}
    {% assign member = site.pastteam[id] %}
    <div id="{{ member.short_name }}" class="authorbox position-relative py-5 px-3 mb-4 mt-4 border">   
        <div class="row">
            <div class="wrapavname col-md-3 text-center">
                {% if member.avatar %}
                <img class="author-thumb" src="{{ site.baseurl }}/assets/images/team/{{ member.avatar }}" alt="{{ member.display_name }}">
                {% else %}
                <img class="author-thumb" src="{{ site.baseurl }}/assets/images/avatar.png" alt="{{ member.display_name }}">
                {% endif %}

                <p class="mt-4 mb-0 small text-center">
                    {% if member.web %}
                        <a target="_blank" class="d-inline-block mx-1 text-dark" href="{{ member.web }}"><i class="fa fa-link"></i></a>
                    {% endif %}
                    {% if member.twitter %}
                        <a target="_blank" class="d-inline-block mx-1 text-dark" href="https://twitter.com/{{ member.twitter }}"><i class="fab fa-twitter"></i></a>
                    {% endif %}
                    {% if member.instagram %}
                        <a target="_blank" class="d-inline-block mx-1 text-dark" href="https://www.instagram.com/{{ member.instagram }}"><i class="fab fa-instagram"></i></a>
                    {% endif %}
                    {% if member.linkedin %}
                        <a target="_blank" class="d-inline-block mx-1 text-dark" href="https://www.linkedin.com/in/{{ member.linkedin }}"><i class="fab fa-linkedin"></i></a>
                    {% endif %}
                    {% if member.email %}
                        <a class="d-inline-block mx-1 text-dark" href="mailto:{{ member.email }}"><i class="fa fa-envelope"></i></a>
                    {% endif %}
                </p>
            </div>
            <div class="col-md-9">
                <h3>{{ member.display_name }}</h3>
                <h6 class="text-muted">{{ member.sub_role }}</h6>
                <p class="mt-3 mb-0">{{ member.bio }}</p>
            </div>
        </div>
    </div>

{% endfor %}

</div>
{% endfor %}
