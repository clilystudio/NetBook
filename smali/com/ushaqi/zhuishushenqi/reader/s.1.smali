.class final Lcom/ushaqi/zhuishushenqi/reader/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/CheckBox;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/reader/o;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/o;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/s;->b:Lcom/ushaqi/zhuishushenqi/reader/o;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/s;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 423
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/s;->b:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/o;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "paying_page_purchase"

    sget-object v2, Lcom/ushaqi/zhuishushenqi/util/I;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/s;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/s;->b:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/o;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "paying_page_auto_choose"

    sget-object v2, Lcom/ushaqi/zhuishushenqi/util/I;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/s;->b:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v0, v4}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/o;Z)V

    .line 430
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/s;->b:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/o;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "auto_buy_chapter"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/ushaqi/zhuishushenqi/util/I;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/s;->a:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 431
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/I;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/s;->b:Lcom/ushaqi/zhuishushenqi/reader/o;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/s;->b:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/o;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "\u8d2d\u4e70\u4e2d..."

    invoke-direct {v0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/reader/I;-><init>(Lcom/ushaqi/zhuishushenqi/reader/o;Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/s;->b:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/reader/o;->b(Lcom/ushaqi/zhuishushenqi/reader/o;)Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/reader/n;->a()Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/I;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 432
    return-void
.end method
