export function validateSlug(slug) {
    if (typeof slug !== "string") {
        return null;
    }

    const trimmedValue = slug.trim();

    if (trimmedValue.length === 0) {
        return null;
    }

    if (/^\d+$/.test(trimmedValue)) {
        return null;
    }

    return trimmedValue;
}