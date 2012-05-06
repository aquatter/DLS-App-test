//---------------------------------------------------------------------------

#ifndef UProgectDataH
#define UProgectDataH

#include <Classes.hpp>
#include <vector>


struct TDataParams {
	float WaveLength;
	float Viscosity;
	float ScatAngle;
	float Temperature;
	float RefIndex;
	char Discr_Time;
};


class TProjectData
{

   public:

   typedef enum{pdHeader,  pdSerie, pdRecord, pdMean} TVtPDState;
   typedef 	struct
			{
				UnicodeString Name;
				double ScatAngle;
				double Temperature;
				bool ACF;
				int rec_num;
				int seq_num;
				double x_pcs;
				double pi;
				double gamma;
				double rate;
				char prism;
				char aperture;
				char polar;
				TVtPDState State;
				TProjectData *pd;
			} TVtPD;


   class TRec
	{
    	public:
		bool process_;
		UnicodeString Data_;
		UnicodeString Acf_;
		size_t num_seq, num_rec;
		TDataParams DataParams;
		double a0;
		double a1;
		double a2;
		double pi;
		double x_pcs;
        double rate;
		char prism;
		char aperture;
		char polar;

		TRec(): process_(false), Data_(""), Acf_(""), a0(0.0), a1(0.0), a2(0.0),
		pi(0.0), x_pcs(0.0), rate(0.0), prism(0), aperture(0), polar(0)
		{}

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

	class TSeq
	{
		public:
		bool process_;
		UnicodeString Mean_Acf_;
		TReqVect rec_;
		size_t num_seq, num_rec;
        double a0;
        double a1;
        double a2;
        double pi;
        double x_pcs;

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
		TSeq(): a0(0.0), a1(0.0), a2(0.0), pi(0.0), x_pcs(0.0), process_(false),
				Mean_Acf_("")
		{
			/*
			a0=0;
			a1=0;
			a2=0;
			pi=0;
			x_pcs=0;
			process_ = false;
			Mean_Acf_ = "";
			*/
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
	UnicodeString Name_Spec;
	UnicodeString Name_Sol;
	UnicodeString Date;
	int num;

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

	TProjectData(): num(0)
	{  };

	~TProjectData()
	{
		seq_.clear();
	};

	bool operator ==(TProjectData &pd_)
	{
		return (Path == pd_.Path);
    }

};

extern TProjectData pd;
extern std::vector<TProjectData> pd_vector;
//---------------------------------------------------------------------------
#endif
