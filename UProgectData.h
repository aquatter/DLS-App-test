//---------------------------------------------------------------------------

#ifndef UProgectDataH
#define UProgectDataH

#include <Classes.hpp>
#include <vector>



class TProjectData
{

   public:

   class TSeqRec
   {
		public:
		UnicodeString virtual GetAcf() {}
		void virtual GetNums(size_t &nr, size_t &ns) {}
   };



   class TRec: public TSeqRec
	{
    	public:
		bool process_;
		UnicodeString Data_;
		UnicodeString Acf_;
		size_t num_seq, num_rec;

		TRec()
		{
			process_ = false;
			Data_ = "";
			Acf_ = "";
		}

		UnicodeString GetAcf()
		{
			return Acf_;
		}

		void GetNums(size_t &nr, size_t &ns)
		{
			nr = num_rec;
			ns = num_seq;
		}

		void Enable()
		{   process_ = true;  }


	};



	typedef std::vector<TRec> TReqVect;
	class TSeq: public TSeqRec
	{
		public:
		bool process_;
		UnicodeString Mean_Acf_;
		TReqVect rec_;
        size_t num_seq, num_rec;

        size_t SizeOf()
        {
			return rec_.size();
		}

		void Enable()
		{
			process_ = true;
			for (size_t i=0; i < rec_.size(); i++)
				rec_[i].process_ = true;
		}

		UnicodeString GetAcf()
		{
			return Mean_Acf_;
        }

		void GetNums(size_t &nr, size_t &ns)
        {
        	nr = num_rec;
        	ns = num_seq;
        }

		TRec &operator [](int rec_num)
			{
				return rec_[rec_num];
			}

		TRec &Add()
		{
			int n =	(int)rec_.size();
			rec_.push_back(TRec());
			rec_[n].num_rec = n;
			rec_[n].num_seq = num_seq;
			return rec_[n];
		}
		TSeq()
		{
			process_ = false;
			Mean_Acf_ = "";
        }

		~TSeq()
		{
			rec_.clear();
		}

	};

	typedef std::vector<TSeq> TSeqVect;
	TSeqVect seq_;
	UnicodeString Name;
	UnicodeString Path;

	size_t SizeOf()
	{
        return seq_.size();
    }

	TSeq &operator [](int seq_num)
		{
			return seq_[seq_num];
		}

	TSeq &Add()
	{
		int n =	(int)seq_.size();
		seq_.push_back(TSeq());
		seq_[n].num_rec = -1;
		seq_[n].num_seq = n;
		return seq_[n];
	}

	void Disable_All()
	{
		for (size_t i=0; i < seq_.size(); i++) {
			seq_[i].process_ = false;
			for (size_t j=0; j < seq_[i].rec_.size(); j++)
				seq_[i].rec_[j].process_ = false;
		}
	}

    void Enable_All()
    {
		for (size_t i=0; i < seq_.size(); i++) {
			seq_[i].process_ = true;
			for (size_t j=0; j < seq_[i].rec_.size(); j++)
				seq_[i].rec_[j].process_ = true;
    	}
    }

	void Enable_Seq(size_t num_seq)
	{
		if (num_seq < seq_.size()) {
		   seq_[num_seq].process_ = true;
		   for (size_t i=0; i < seq_[num_seq].rec_.size(); i++)
				seq_[num_seq].rec_[i].process_ = true;
		}
	}

	void Enable_Rec(unsigned num_seq, size_t num_rec)
	{
		if (num_seq < seq_.size())
			if (num_rec < seq_[num_seq].rec_.size()) {
				seq_[num_seq].process_ = true;
				seq_[num_seq].rec_[num_rec].process_ = true;
			}
	}

	void Clear ()
	{
		seq_.clear();
		Name = "";
		Path = "";
	}

	TProjectData()
	{  };

	~TProjectData()
	{
		seq_.clear();
	};

};

extern TProjectData pd;
//---------------------------------------------------------------------------
#endif
