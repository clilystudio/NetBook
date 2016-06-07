.class final Lcom/ushaqi/zhuishushenqi/widget/aA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/widget/ShareWarningView;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/ShareWarningView;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/aA;->a:Lcom/ushaqi/zhuishushenqi/widget/ShareWarningView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/aA;->a:Lcom/ushaqi/zhuishushenqi/widget/ShareWarningView;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/widget/ShareWarningView;->a(Lcom/ushaqi/zhuishushenqi/widget/ShareWarningView;)Lcom/ushaqi/zhuishushenqi/widget/aB;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/aA;->a:Lcom/ushaqi/zhuishushenqi/widget/ShareWarningView;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/widget/ShareWarningView;->a(Lcom/ushaqi/zhuishushenqi/widget/ShareWarningView;)Lcom/ushaqi/zhuishushenqi/widget/aB;

    move-result-object v0

    invoke-interface {v0}, Lcom/ushaqi/zhuishushenqi/widget/aB;->a()V

    .line 69
    :cond_0
    return-void
.end method
