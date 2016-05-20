.class final Lcom/ushaqi/zhuishushenqi/reader/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/reader/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ushaqi/zhuishushenqi/reader/e",
        "<",
        "Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/o;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/o;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/p;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 203
    check-cast p1, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    .line 1206
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/p;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/p;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/o;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "paying_page_auto_purchase"

    sget-object v2, Lcom/ushaqi/zhuishushenqi/util/I;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/J;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/p;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-direct {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/reader/J;-><init>(Lcom/ushaqi/zhuishushenqi/reader/o;Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/J;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 203
    :cond_0
    return-void
.end method
