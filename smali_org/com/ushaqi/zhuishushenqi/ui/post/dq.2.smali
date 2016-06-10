.class public final Lcom/ushaqi/zhuishushenqi/ui/post/dq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dq;->a:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dq;->b:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dq;->c:Ljava/lang/String;

    .line 33
    iput-boolean p4, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dq;->d:Z

    .line 34
    iput-object p5, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dq;->e:Ljava/lang/String;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/post/dq;)V
    .locals 3

    .prologue
    .line 15
    .line 1065
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dq;->a:Landroid/content/Context;

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/post/AddTopicActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1066
    const-string v1, "book_post_list_bookId"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1067
    const-string v1, "book_post_list_bookTitle"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dq;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1068
    const-string v1, "add_post_mode"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dq;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1069
    const-string v1, "book_post_list_from_reader"

    iget-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dq;->d:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1070
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dq;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 15
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/post/dq;)V
    .locals 3

    .prologue
    .line 15
    .line 2055
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dq;->a:Landroid/content/Context;

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/post/AddVoteActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2056
    const-string v1, "book_post_list_bookId"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2057
    const-string v1, "book_post_list_bookTitle"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dq;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2058
    const-string v1, "add_post_category"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2059
    const-string v1, "add_post_mode"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dq;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2060
    const-string v1, "book_post_list_from_reader"

    iget-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dq;->d:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2061
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dq;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 15
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 38
    new-instance v0, Luk/me/lewisdeane/ldialogs/h;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dq;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    const-string v1, "\u53d1\u5e03"

    .line 1036
    iput-object v1, v0, Luk/me/lewisdeane/ldialogs/h;->d:Ljava/lang/String;

    .line 38
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u8bdd\u9898"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "\u6295\u7968"

    aput-object v3, v1, v2

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/post/dr;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/dr;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/dq;)V

    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->b()Landroid/app/AlertDialog;

    .line 52
    return-void
.end method
