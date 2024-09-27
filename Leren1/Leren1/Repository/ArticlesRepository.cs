using Leren1.Masters;
using Leren1.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Web;

namespace Leren1.Repository
{
    public class ArticlesRepository
    {
        private static DatabaseEntities1 db = DatabaseSingleton.GetInstance();

        public static void addnewHeader(ArticleHeader newArticle)
        {
            db.ArticleHeaders.Add(newArticle);
            db.SaveChanges();
        }

        public static List<SubjectHeader> getSubjectHeaders()
        {
            return (from s in db.SubjectHeaders select s).ToList();
        }

        public static List<CategoryHeader> getCategoryHeaders()
        {
            return (from c in db.CategoryHeaders select c).ToList();
        }

        public static List<ArticleHeader> getArticleListFromNames(string searchTerm)
        {
           return (from aS in db.ArticleHeaders where aS.ArticleTitle.Contains(searchTerm) select aS).ToList();
        }

        public static List<ArticleHeader> getArticleListFromID(string userID)
        {
            return (from a in db.ArticleHeaders where a.UserID == userID select a).ToList();
        }

        public static String getArticleSubjectFromID(String subjectID)
        {
            return (from s in db.SubjectHeaders where subjectID == s.SubjectID select s.SubjectTitle).FirstOrDefault();
        }

        public static String getArticleCategoryFromID(String categoryID)
        {
            return (from c in db.CategoryHeaders where c.CategoryID == categoryID select c.CategoryTitle).FirstOrDefault();
        }

        public static ArticleHeader getArticleHeaderFromID(String id)
        {
            return (from d in db.ArticleHeaders where d.ArticleID == id select d).FirstOrDefault();
        }

        public static ArticleContent getArticleContentFromID(String id)
        {
            return (from c in db.ArticleContents where c.ArticleID == id select c).FirstOrDefault();
        }

        public static void updateContent(ArticleContent content)
        {
            db.Entry(content).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
        }

        public static void addContent(ArticleContent newContent)
        {
            db.ArticleContents.Add(newContent);
            db.SaveChanges();
        }

        public static void removeContentByID(string articleId)
        {
            ArticleContent articleObject = (from d in db.ArticleContents where d.ArticleID == articleId select d).FirstOrDefault();
            db.ArticleContents.Remove(articleObject);
            db.SaveChanges();
        }

        public static void removeHeaderByID(string articleId)
        {
            ArticleHeader article = (from a in db.ArticleHeaders where a.ArticleID == articleId select a).FirstOrDefault();
            db.ArticleHeaders.Remove(article);
            db.SaveChanges();
        }
    }
}