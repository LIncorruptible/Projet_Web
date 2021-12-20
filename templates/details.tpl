{extends file='layout.tpl'}
{block name=title}Liste détaillée{/block}
{block name=body}

{assign var="Candidature" value=$InfosCandidatureGroupe|default:[]}
<div id='main'>
<hr>
<h1>Candidature</h1>
<table>
<html>
    <th class = "photosDetails">
        <td>
            <img src="./candidatures/groupe_{$Candidature.id}_{$Candidature.nom}/photo1_{$Candidature.id}_{$Candidature.nom}"/>
        </td>
        <td>
            <img src="./candidatures/groupe_{$Candidature.id}_{$Candidature.nom}/photo2_{$Candidature.id}_{$Candidature.nom}"/>
        </td>
    </th>
    
    {foreach from=$Candidature key=$key item=$value}
        {foreach from=$value key=$entete item=$infoProfil}
            <tr class = "tableauDetails">
                <th class = "enteteDetails">
                    <p><b>{$entete} :</b></p>
                </th>
                <th class = "infoDetails">
                    {$infoProfil}
                </th>
            </tr>
        {/foreach}
    {/foreach}
</html>
</table>
</div>
{/block}