.class final Lcom/ushaqi/zhuishushenqi/ui/bO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/bM;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/bM;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/bO;->a:Lcom/ushaqi/zhuishushenqi/ui/bM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bO;->a:Lcom/ushaqi/zhuishushenqi/ui/bM;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/bM;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->G(Landroid/content/Context;)V

    .line 434
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bO;->a:Lcom/ushaqi/zhuishushenqi/ui/bM;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/bM;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/AutoFlowView;->a()V

    .line 435
    return-void
.end method
