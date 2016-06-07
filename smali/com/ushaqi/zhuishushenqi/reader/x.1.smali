.class final Lcom/ushaqi/zhuishushenqi/reader/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/o;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/o;)V
    .locals 0

    .prologue
    .line 467
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/x;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 470
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/x;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/o;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/x;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/o;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->i()V

    .line 474
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/x;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/o;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "paying_page_cancel"

    sget-object v2, Lcom/ushaqi/zhuishushenqi/util/I;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_0
    return-void
.end method
