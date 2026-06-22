/* inserire tutte le query per avere più ordine nel codice! 
usiamo la sintassi */

/*======== PRODUCTS ========*/

const querySelectAllProducts = `
select p.id, p.name, p.slug, p.short_description as shortDescription, p.marketing_description as mktgDescription, p.price_full as price, p.ingredients, p.created_at as createdAt, p.updated_at as updatedAt, p.image_main_url as imgMain, p.image_lifestyle as imgLifestyle, p.image_ksp as imgKsp
from products p`
;

const querySelectProductBySlug = `
select p.id, p.name, p.slug, p.short_description as shortDescription, p.marketing_description as mktgDescription, p.price_full as price, p.ingredients, p.created_at as createdAt, p.updated_at as updatedAt, p.image_main_url as imgMain, p.image_lifestyle as imgLifestyle, p.image_ksp as imgKsp
from products p
where p.slug = '?';
`;

const queries = {
    querySelectAllProducts,
    querySelectProductBySlug
};

export default queries;