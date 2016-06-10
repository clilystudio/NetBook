.class public Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;)Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;->e:Z

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f03006a

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;->setContentView(I)V

    .line 30
    const v0, 0x7f0500b6

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;->b(I)V

    .line 35
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/a;->a()Lcom/ushaqi/zhuishushenqi/a;

    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/a;->a(Landroid/app/Activity;)V

    .line 37
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "book_post_list_bookId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;->a:Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "book_post_list_bookTitle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;->b:Ljava/lang/String;

    .line 40
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "add_post_mode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;->c:Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "book_post_list_from_reader"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;->e:Z

    .line 43
    const v0, 0x7f0c0192

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 44
    const v1, 0x7f0c0194

    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 45
    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/I;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/I;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/J;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/J;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicCategoryActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method
