.class public Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/ushaqi/zhuishushenqi/adapter/E;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;-><init>()V

    .line 72
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "keyword"

    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;)Lcom/ushaqi/zhuishushenqi/adapter/E;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;->b:Lcom/ushaqi/zhuishushenqi/adapter/E;

    return-object v0
.end method


# virtual methods
.method protected final b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;->i()V

    .line 66
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/H;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/ui/H;-><init>(Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;->c:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/H;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 67
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseLoadingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f03011a

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;->a(I)V

    .line 41
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "keyword"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;->c:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;->b(Ljava/lang/String;)V

    .line 44
    const v0, 0x7f0c0141

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;->a:Landroid/widget/ListView;

    .line 45
    new-instance v0, Lcom/ushaqi/zhuishushenqi/adapter/E;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/E;-><init>(Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;->b:Lcom/ushaqi/zhuishushenqi/adapter/E;

    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;->b:Lcom/ushaqi/zhuishushenqi/adapter/E;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/G;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/G;-><init>(Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 60
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/AuthorBooksActivity;->b()V

    .line 61
    return-void
.end method
