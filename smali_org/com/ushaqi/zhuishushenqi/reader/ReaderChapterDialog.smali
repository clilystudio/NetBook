.class public Lcom/ushaqi/zhuishushenqi/reader/ReaderChapterDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/reader/br;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 95
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderChapterDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const/4 v0, 0x1

    const v1, 0x7f0700d2

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapterDialog;->setStyle(II)V

    .line 42
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 46
    const v0, 0x7f030092

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 48
    const v0, 0x7f0c0208

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 49
    const v1, 0x7f0c0207

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapterDialog;->b:Landroid/widget/TextView;

    .line 50
    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/br;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapterDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/ushaqi/zhuishushenqi/reader/br;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderChapterDialog;Landroid/view/LayoutInflater;)V

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapterDialog;->a:Lcom/ushaqi/zhuishushenqi/reader/br;

    .line 51
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 52
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapterDialog;->a:Lcom/ushaqi/zhuishushenqi/reader/br;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    return-object v2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 85
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapterDialog;->a:Lcom/ushaqi/zhuishushenqi/reader/br;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/br;->notifyDataSetChanged()V

    .line 61
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 69
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapterDialog;->dismissAllowingStateLoss()V

    .line 70
    return-void
.end method
