.class final Lcom/ushaqi/zhuishushenqi/reader/q;
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
    .line 844
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/q;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 847
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/q;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/o;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->t(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 848
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/q;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->c(Lcom/ushaqi/zhuishushenqi/reader/o;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 849
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/q;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->e(Lcom/ushaqi/zhuishushenqi/reader/o;)Lcom/ushaqi/zhuishushenqi/reader/H;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/q;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->e(Lcom/ushaqi/zhuishushenqi/reader/o;)Lcom/ushaqi/zhuishushenqi/reader/H;

    move-result-object v0

    invoke-interface {v0}, Lcom/ushaqi/zhuishushenqi/reader/H;->a()V

    .line 855
    :cond_0
    :goto_0
    return-void

    .line 853
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/q;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/o;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f050132

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    goto :goto_0
.end method
