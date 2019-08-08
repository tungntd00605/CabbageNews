<article class="list_news">
    <h4 class="title_news">
        <a href="/article?arcId=${articles.get(0).id}" title="${articles.get(0).title}">
            ${articles.get(0).title} </a>
    </h4>
    <div class="thumb_art">
        <a class="thumb thumb_5x3" href="${articles.get(0).title}">
            <img style="max-width:140px;max-height:84px" src="${articles.get(0).thumbnail}" class="vne_lazy_image" data-original="${articles.get(0).thumbnail}" alt="${articles.get(0).title}">
        </a>
    </div>
    <p class="description">${articles.get(0).description.substring(0,150)}</p>
</article>
<ul class="list_title">
    <li>
        <h4 class="title_news">
            <a href="/article?arcId=${articles.get(1).id}" title="${articles.get(1).title}">
                ${articles.get(1).title} </a>
        </h4>
    </li>
    <li>
        <h4 class="title_news">
            <a href="/article?arcId=${articles.get(2).id}" title="${articles.get(2).title}">
                ${articles.get(2).title} </a>
        </h4>
    </li>
</ul>
