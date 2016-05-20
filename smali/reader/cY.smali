.class final Lcom/ushaqi/zhuishushenqi/reader/cY;
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
    .line 181
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/cY;->a:Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 184
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cY;->a:Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->d(Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 185
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cY;->a:Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->e(Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 186
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cY;->a:Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->f(Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 187
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cY;->a:Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->b(Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;)Lcom/ushaqi/zhuishushenqi/reader/bZ;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->a(I)V

    .line 188
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cY;->a:Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->g(Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;)Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->a()V

    .line 189
    return-void
.end method
