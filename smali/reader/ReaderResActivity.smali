.class public Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;
.super Lcom/ushaqi/zhuishushenqi/reader/ReaderModeActivity;
.source "SourceFile"


# instance fields
.field private e:Landroid/view/View;

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderModeActivity;-><init>()V

    .line 114
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;->f:I

    return v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;I)I
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;->f:I

    return p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "BOOK_ID"

    .line 48
    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "BOOK_TITLE"

    invoke-virtual {v0, v1, p2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "BOOK_MODE"

    invoke-virtual {v0, v1, p3}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;I)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;->e:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderModeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f03008b

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;->setContentView(I)V

    .line 1063
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;->c()V

    .line 1064
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1065
    const v1, 0x7f0c03e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1066
    const v1, 0x7f0c0095

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/bQ;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/bQ;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1072
    const v1, 0x7f0c03e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1073
    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/bR;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/bR;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1079
    const v1, 0x7f0c03e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;->e:Landroid/view/View;

    .line 1080
    const v1, 0x7f0c03e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/bS;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/bS;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1086
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;->a()Landroid/support/v7/app/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/a;->a(Landroid/view/View;)V

    .line 1087
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;->a()Landroid/support/v7/app/a;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v7/app/a;->d(Z)V

    .line 39
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->a(Ljava/lang/Object;)V

    .line 1091
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;->f(Ljava/lang/String;)V

    .line 1092
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 1094
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;->a:I

    if-nez v0, :cond_1

    .line 1103
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-class v2, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;

    .line 1104
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;

    .line 1105
    if-nez v0, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/reader/ReaderResourceFragment;

    move-result-object v0

    .line 1099
    :cond_0
    :goto_0
    const v2, 0x7f0c0136

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 42
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/a;->a()Lcom/ushaqi/zhuishushenqi/a;

    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/a;->a(Landroid/app/Activity;)V

    .line 43
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/bT;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/reader/bT;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;B)V

    new-array v1, v4, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;->b:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/bT;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 44
    return-void

    .line 1097
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;->a(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/reader/ReaderWebPageFragment;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderModeActivity;->onDestroy()V

    .line 54
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->b(Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public onModeChanged(Lcom/ushaqi/zhuishushenqi/event/v;)V
    .locals 0
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity;->finish()V

    .line 60
    return-void
.end method
