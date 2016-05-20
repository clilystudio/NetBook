.class public Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field mRelateUgcRoot:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0258
    .end annotation
.end field

.field mUgcContainer:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0c0259
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 58
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment;
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment;-><init>()V

    .line 39
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 40
    const-string v2, "book_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment;->setArguments(Landroid/os/Bundle;)V

    .line 42
    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 47
    const v0, 0x7f0300b2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 55
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask;-><init>(Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "book_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/RelateUgcFragment$GetUgcsTask;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 56
    return-void
.end method
