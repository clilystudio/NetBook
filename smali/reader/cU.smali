.class final Lcom/ushaqi/zhuishushenqi/reader/cU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/cU;->a:Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cU;->a:Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->b(Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;)Lcom/ushaqi/zhuishushenqi/reader/bZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->e()V

    .line 99
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cU;->a:Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->a(Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;)V

    .line 100
    return-void
.end method
