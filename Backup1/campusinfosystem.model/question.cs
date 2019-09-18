using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace campusinfosystem.model
{
    public class question
    {
        private int _id;

        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }
        private string _subj;

        public string Subject
        {
            get { return _subj; }
            set { _subj = value; }
        }
        private string _quest;

        public string Question
        {
            get { return _quest; }
            set { _quest = value; }
        }
        private string _answr;

        public string Answer
        {
            get { return _answr; }
            set { _answr = value; }
        }
        private string _stats;

        public string Status
        {
            get { return _stats; }
            set { _stats = value; }
        }
        public question()
        {

        }
        public question(int id,string subject,string question,string answer,string status)
        {
            this._id = id;
            this._subj = subject;
            this._quest = question;
            this._answr = answer;
            this._stats = status;
        }
    }
}
