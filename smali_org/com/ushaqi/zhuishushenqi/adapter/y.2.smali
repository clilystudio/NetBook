.class final Lcom/ushaqi/zhuishushenqi/adapter/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/model/ChargePlan;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/adapter/x;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/adapter/x;Lcom/ushaqi/zhuishushenqi/model/ChargePlan;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/adapter/y;->b:Lcom/ushaqi/zhuishushenqi/adapter/x;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/adapter/y;->a:Lcom/ushaqi/zhuishushenqi/model/ChargePlan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/y;->b:Lcom/ushaqi/zhuishushenqi/adapter/x;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/adapter/x;->a(Lcom/ushaqi/zhuishushenqi/adapter/x;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/adapter/y;->b:Lcom/ushaqi/zhuishushenqi/adapter/x;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/adapter/x;->a(Lcom/ushaqi/zhuishushenqi/adapter/x;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/adapter/y;->a:Lcom/ushaqi/zhuishushenqi/model/ChargePlan;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->a(Lcom/ushaqi/zhuishushenqi/model/ChargePlan;)V

    .line 56
    :cond_0
    return-void
.end method
