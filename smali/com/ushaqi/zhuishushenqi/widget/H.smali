.class final Lcom/ushaqi/zhuishushenqi/widget/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/H;->b:Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/widget/H;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/H;->b:Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/H;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;->a(Lcom/ushaqi/zhuishushenqi/widget/GameGiftItemView;Ljava/lang/String;)V

    .line 225
    return-void
.end method
