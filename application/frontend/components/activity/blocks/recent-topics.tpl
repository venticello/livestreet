{**
 * Последняя активность
 * Последние топики
 *}

{capture 'items'}
    {foreach $smarty.local.topics as $topic}
        {include './recent-item.tpl'
            user     = $topic->getUser()
            topic    = $topic
            blog     = $topic->getBlog()
            date     = $topic->getDatePublish()
            topicUrl = $topic->getUrl()}
    {foreachelse}
        {component 'blankslate' text={lang 'common.empty'} mods='no-background'}
    {/foreach}
{/capture}

{component 'item' template='group' items=$smarty.capture.items}