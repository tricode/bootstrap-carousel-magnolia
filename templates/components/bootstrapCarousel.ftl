<div class="container">
    <div id="${content.id}" class="carousel slide" data-ride="carousel">
        [#-- Indicators --]
        <ol class="carousel-indicators">
            [#list cmsfn.children(content) as slide]
                <li data-target="#${content.id}" data-slide-to="${slide?counter - 1}"[#if slide?counter == 1] class="active"[/#if]></li>
            [/#list]
        </ol>

        [#-- Wrapper for slides --]
        <div class="carousel-inner" role="listbox">
            [#list cmsfn.children(content) as slide]
                [#if slide.imageId?has_content]
                    [#assign imageSrc = damfn.getAssetLink(slide.imageId)!]

                    [#if imageSrc?has_content]
                        <div class="item[#if slide?counter == 1] active[/#if]">
                            <img src="${imageSrc}" alt="${slide.imageAlt!""}">
                            [#if slide.title?has_content || slide.description?has_content]
                                <div class="carousel-caption">
                                    <h3>${slide.title!""}</h3>
                                    <p>${slide.description!""}</p>
                                </div>
                            [/#if]
                        </div>
                    [#else]
                        <p>Slide ${slide?counter}: Referenced image is missing! Has the image been removed?</p>
                    [/#if]
                [#else]
                    <p>Slide ${slide?counter}: Image is required, but no image has been defined!</p>
                [/#if]
            [/#list]
        </div>

        [#-- Controls --]
        <a class="left carousel-control" href="#${content.id}" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#${content.id}" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>