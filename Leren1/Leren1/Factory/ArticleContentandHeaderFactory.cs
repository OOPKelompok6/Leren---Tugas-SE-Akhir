using Leren1.Masters;
using Leren1.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Leren1.Factory
{
    public class ArticleContentandHeaderFactory
    {
        public static ArticleHeader createHeader(String title, String subjectId, String articleId, String categoryId, String userId)
        {
            return new ArticleHeader()
            {
                ArticleTitle = title,
                ArticleID = articleId,
                SubjectID = subjectId,
                CategoryID = categoryId,
                UserID = userId
            };
        }

        public static ArticleContent createContent(String id, String editorContent, int numOfSections, String objID) 
        { 
            return new ArticleContent()
            {
                ArticleID = id,
                ContentString = editorContent,
                Sections = numOfSections,
                ObjectID = objID
            };
        }
    }
}