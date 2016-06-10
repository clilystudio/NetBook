.class final Lcom/ushaqi/zhuishushenqi/reader/cT;
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
    .line 88
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/cT;->a:Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cT;->a:Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->b(Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;)Lcom/ushaqi/zhuishushenqi/reader/bZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->d()V

    .line 92
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cT;->a:Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->a(Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;)V

    .line 93
    return-void
.end method
