.class final Lcom/ushaqi/zhuishushenqi/widget/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/view/a;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;Lcom/ushaqi/zhuishushenqi/view/a;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/V;->b:Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/widget/V;->a:Lcom/ushaqi/zhuishushenqi/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/V;->a:Lcom/ushaqi/zhuishushenqi/view/a;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/view/a;->dismiss()V

    .line 144
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/V;->b:Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;->a(Lcom/ushaqi/zhuishushenqi/widget/GiftGameGiftButton;)V

    .line 145
    return-void
.end method
