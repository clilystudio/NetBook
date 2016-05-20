.class final Lcom/ushaqi/zhuishushenqi/widget/aD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/d/a;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/aD;->a:Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/aD;->a:Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;->a(Lcom/ushaqi/zhuishushenqi/widget/UserInfoPortraitView;)Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    move-result-object v0

    invoke-static {p1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 92
    return-void
.end method
