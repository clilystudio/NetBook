.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/ui/ab;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/H;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/H;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getBooks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/H;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    const-string v1, "\u81f3\u5c11\u8981\u6dfb\u52a0\u4e00\u672c\u4e66\u7c4d\u624d\u80fd\u4fdd\u5b58\u54e6"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/P;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/H;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/P;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/P;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/H;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/O;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/H;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/O;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideEditBooksActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/O;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 102
    :cond_0
    return-void
.end method
