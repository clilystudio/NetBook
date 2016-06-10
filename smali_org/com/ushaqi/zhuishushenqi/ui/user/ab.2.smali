.class final Lcom/ushaqi/zhuishushenqi/ui/user/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ab;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 110
    if-ltz p3, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ab;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/user/PayVoucherFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 113
    :cond_0
    return-void
.end method
