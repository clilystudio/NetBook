.class final Lcom/ushaqi/zhuishushenqi/ui/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ab;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;Lcom/ushaqi/zhuishushenqi/ui/ab;)V
    .locals 0

    .prologue
    .line 242
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/M;->a:Lcom/ushaqi/zhuishushenqi/ui/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/M;->a:Lcom/ushaqi/zhuishushenqi/ui/ab;

    invoke-interface {v0}, Lcom/ushaqi/zhuishushenqi/ui/ab;->b()V

    .line 246
    return-void
.end method
