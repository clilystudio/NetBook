.class final Lcom/ushaqi/zhuishushenqi/reader/cS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/dc;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;Lcom/ushaqi/zhuishushenqi/reader/dc;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/cS;->b:Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/cS;->a:Lcom/ushaqi/zhuishushenqi/reader/dc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cS;->b:Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "auto_read_start"

    invoke-static {v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cS;->b:Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->D(Landroid/content/Context;)V

    .line 227
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cS;->a:Lcom/ushaqi/zhuishushenqi/reader/dc;

    invoke-interface {v0}, Lcom/ushaqi/zhuishushenqi/reader/dc;->a()V

    .line 228
    return-void
.end method
