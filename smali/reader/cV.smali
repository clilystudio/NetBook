.class final Lcom/ushaqi/zhuishushenqi/reader/cV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/cV;->a:Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .prologue
    const/16 v0, 0xf

    .line 127
    if-eqz p3, :cond_1

    .line 128
    if-ge p2, v0, :cond_0

    move p2, v0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cV;->a:Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->b(Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;)Lcom/ushaqi/zhuishushenqi/reader/bZ;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->b(I)V

    .line 133
    :cond_1
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cV;->a:Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->c(Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 138
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 142
    return-void
.end method
