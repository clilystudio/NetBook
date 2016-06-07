.class public abstract Lcom/ushaqi/zhuishushenqi/ui/BaseTabActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field protected a:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(II)V
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/BaseTabActivity;->a:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;

    .line 17
    invoke-virtual {v0, p1, p2}, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;->a(II)V

    .line 18
    return-void
.end method
