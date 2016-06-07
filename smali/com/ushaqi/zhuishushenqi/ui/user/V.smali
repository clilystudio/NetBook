.class final Lcom/ushaqi/zhuishushenqi/ui/user/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;

.field private synthetic b:Landroid/widget/PopupWindow;

.field private synthetic c:Lcom/ushaqi/zhuishushenqi/ui/user/S;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/S;Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;Landroid/widget/PopupWindow;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/V;->c:Lcom/ushaqi/zhuishushenqi/ui/user/S;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/V;->a:Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;

    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/ui/user/V;->b:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/V;->c:Lcom/ushaqi/zhuishushenqi/ui/user/S;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/S;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/V;->a:Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord$Order;)V

    .line 350
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/V;->c:Lcom/ushaqi/zhuishushenqi/ui/user/S;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/user/S;->a:Lcom/ushaqi/zhuishushenqi/ui/user/PayConsumeActivity;

    const-string v1, "\u5df2\u590d\u5236\u5230\u7c98\u8d34\u677f"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/V;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 352
    return-void
.end method
