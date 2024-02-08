// ==UserScript==
// @name Instagram-Pixwox redirector
// @description	Redirect Instagram to equivalent Pixwox page
// @version 1.4
// @author honest_joe
// @homepage https://greasyfork.org/users/1249547-honest-joe
// @run-at document-start
// @match https://www.instagram.com/*
// @icon https://www.pixwox.com/favicon.ico
// @license MIT
// @namespace https://greasyfork.org/users/1249547
// @downloadURL https://update.greasyfork.org/scripts/485083/Instagram-Pixwox%20redirector.user.js
// @updateURL https://update.greasyfork.org/scripts/485083/Instagram-Pixwox%20redirector.meta.js
// ==/UserScript==

/*
  Fuck
  I thought this would be like 5 lines of code

  Note: Add
  www.pixwox.com##[class*="ah-box"]
  to adblocker
*/


// Pixwox translations are crap
//const lang = "de/";
const lang = "";

const debug = false;
if (debug) {
    alert(
        "DEBUG" +
        "\nHostname " + window.location.hostname +
        "\nPath " + window.location.pathname +
        "\nSearch " + window.location.search +
        "\nHash " + window.location.hash
    );
}

async function redirectPW() {
    window.stop();
    const normre = /^\/[A-Za-z0-9_.-]+\/$/;                              // /username/
    const postre = /^\/[A-Za-z0-9_.-]+\/p\/[A-Za-z0-9_.-]+\/$/;          // /username/p/UufHJFU347/
    const post2re = /^\/p\/[A-Za-z0-9_.-]+\/$/;                          // /p/UufHJFU347/
    const tvre = /^\/tv\/[A-Za-z0-9_.-]+\/$/;                            // /tv/UufHJFU347/
    const storiesre = /^\/stories\/[A-Za-z0-9_.-]+\/$/;                  // /stories/username/
    const reelsre = /^\/[A-Za-z0-9_.-]+\/reels\/$/;                      // /username/reels/
    const reelpostre = /^\/reel\/[A-Za-z0-9_.-]+\/$/;                    // /reel/UufHJFU347/
    const reelpost2re = /^\/[A-Za-z0-9_.-]+\/reel\/[A-Za-z0-9_.-]+\/$/;  // /username/reel/UufHJFU347/
    const hashtagre = /^\/explore\/tags\/[A-Za-z0-9_.-]+\/$/;            // /explore/tags/hashtag/
    const embedre = /^\/p\/[A-Za-z0-9_.-]+\/embed/;                      // /p/UufHJFU347/embed
    const a_normre = /com%2F[A-Za-z0-9_.-]+%2F$/;                   // /username/
    const a_norm2re = /com%2F[A-Za-z0-9_.-]+%2F%3F.*$/;             // /username/?hl=en
    const a_storiesre = /com%2Fstories%2F[A-Za-z0-9_.-]+%2F$/;      // with login
    const a_stories2re = /com%2Fstories%2F.*%2F[0-9]+%2F$/;         // with login
    const a_reelsre = /com%2F.*%2Freels%2F/;                        // with login

    let pathname = window.location.pathname;
    let search = window.location.search;
    let oops = false;

    switch (true) {
        case pathname == "/":
            // Homepage
            if (debug) alert("p=/");
            pathname = "";
            search = "";
            break;
        case normre.test(pathname):
            if (debug) alert("normre");
            pathname = pathname.replace(/^\//, "profile/");
            search = "";
            break;
        case postre.test(pathname):
        case reelpost2re.test(pathname):
            if (debug) alert("post/reelpost2re");
            pathname = pathname.replace(/^\/[A-Za-z0-9_.-]+\/(p|reel)\//, "post/");
            search = "";
            break;
        case post2re.test(pathname):
        case tvre.test(pathname):
        case reelpostre.test(pathname):
            if (debug) alert("post2/tv/reelpostre");
            pathname = pathname.replace(/^\/(p|tv|reel)\//, "post/");
            search = "";
            break;
        case storiesre.test(pathname):
            if (debug) alert("storiesre");
            pathname = pathname.replace(/^\/stories\//, "profile/");
            pathname = pathname.replace(/\/$/, "/stories/");
            break;
        case reelsre.test(pathname):
            if (debug) alert("reelsre");
            pathname = pathname.replace(/^\//, "profile/");
            pathname = pathname.replace(/reels\/$/, "igtv/");
            break;
        case hashtagre.test(pathname):
            if (debug) alert("hashtagre");
            pathname = pathname.replace(/^\/explore\/tags\//, "tag/");
            search = "";
            break;
        case embedre.test(pathname):
            // do nothing
            oops = true;
            break
        case pathname.startsWith("/accounts/login/"):
        case pathname.startsWith("/accounts/signup/"):
            // login shown; path useless look in search
            if (debug) alert("/acc");
            pathname = "";
            switch (true) {
                case a_storiesre.test(search):
                    search = search.replace(/\?.*stories%2F/, "profile/");
                    search = search.replace(/%2F$/, "/stories/");
                    break;
                case a_stories2re.test(search):
                    // direct link to story not supported, show stories page
                    search = search.replace(/\?.*stories%2F/, "profile/");
                    search = search.replace(/%2F.*%2F$/, "/stories/");
                    break;
                case a_reelsre.test(search):
                    search = search.replace(/\?.*instagram\.com%2F/, "profile/");
                    search = search.replace(/%2F.*$/, "/igtv/");
                    break;
                case a_normre.test(search):
                case a_norm2re.test(search):
                    search = search.replace(/\?.*instagram\.com%2F/, "profile/");
                    search = search.replace(/%2F%3F.*$/, ""); // norm2
                    search = search.replace(/%2F$/, "");
                    break;
                default:
                    alert("redirectPW: acc WTF");
                    oops = true;
                    break;
                    // TODO: post2
            }
            break;
        default:
            // don't know what to do
            alert("redirectPW: WTF");
            oops = true;
            break;
    }
    if (!oops) {
        window.location.replace(`https://www.pixwox.com/${lang}${pathname}${search}`);
    }
}

if (window.location.hostname == "www.instagram.com") redirectPW();