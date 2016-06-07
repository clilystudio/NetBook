.class final Lcom/ushaqi/zhuishushenqi/ui/user/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/T;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/T;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/U;->a:Lcom/ushaqi/zhuishushenqi/ui/user/T;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 312
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/U;->a:Lcom/ushaqi/zhuishushenqi/ui/user/T;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/T;->e:Lcom/ushaqi/zhuishushenqi/ui/user/S;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/U;->a:Lcom/ushaqi/zhuishushenqi/ui/user/T;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/user/T;->b:Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/U;->a:Lcom/ushaqi/zhuishushenqi/ui/user/T;

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/ui/user/T;->c:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/user/U;->a:Lcom/ushaqi/zhuishushenqi/ui/user/T;

    iget-object v3, v3, Lcom/ushaqi/zhuishushenqi/ui/user/T;->d:Landroid/view/View;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/user/U;->a:Lcom/ushaqi/zhuishushenqi/ui/user/T;

    iget v4, v4, Lcom/ushaqi/zhuishushenqi/ui/user/T;->a:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ushaqi/zhuishushenqi/ui/user/S;->a(Lcom/ushaqi/zhuishushenqi/ui/user/S;Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;Landroid/view/View;Landroid/view/View;I)V

    .line 313
    return-void
.end method
