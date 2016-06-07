.class final Lcom/ushaqi/zhuishushenqi/ui/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/aa;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;Lcom/ushaqi/zhuishushenqi/ui/aa;)V
    .locals 0

    .prologue
    .line 297
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/Q;->a:Lcom/ushaqi/zhuishushenqi/ui/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/Q;->a:Lcom/ushaqi/zhuishushenqi/ui/aa;

    invoke-interface {v0}, Lcom/ushaqi/zhuishushenqi/ui/aa;->a()V

    .line 301
    return-void
.end method
