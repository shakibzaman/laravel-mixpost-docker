import{o as s,c as t,b as l,g as o,f as a,n as r}from"./app.7b793fe0.js";const d={class:"bg-white border border-gray-100 rounded-lg"},n={key:0,class:"text-lg font-semibold text-black"},c={key:1,class:"text-gray-500 mt-xs"},g={__name:"Panel",props:{withPadding:{type:Boolean,default:!0}},setup(i){return(e,m)=>(s(),t("div",d,[l("div",{class:r({"p-lg":i.withPadding})},[e.$slots.title?(s(),t("div",n,[o(e.$slots,"title")])):a("",!0),e.$slots.description?(s(),t("div",c,[o(e.$slots,"description")])):a("",!0),l("div",{class:r({"mt-lg":e.$slots.title||e.$slots.description})},[o(e.$slots,"default")],2)],2)]))}};export{g as _};
