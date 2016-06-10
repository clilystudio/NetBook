.class public abstract Lcom/ushaqi/zhuishushenqi/viewbinder/notification/OfficialNotifBinder;
.super Lcom/ushaqi/zhuishushenqi/viewbinder/notification/NotifBinder;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/model/NotificationItem;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/viewbinder/notification/NotifBinder;-><init>(Lcom/ushaqi/zhuishushenqi/model/NotificationItem;)V

    .line 19
    return-void
.end method


# virtual methods
.method public fillImageView(Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;)V
    .locals 2

    .prologue
    .line 28
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02020b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 30
    return-void
.end method

.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method
