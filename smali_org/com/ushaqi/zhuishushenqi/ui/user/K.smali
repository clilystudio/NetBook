.class final Lcom/ushaqi/zhuishushenqi/ui/user/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/K;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;

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
    .line 99
    if-ltz p3, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/K;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/user/PayChargeActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 102
    :cond_0
    return-void
.end method
