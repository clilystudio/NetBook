.class public Lcom/ushaqi/zhuishushenqi/widget/SettingItem;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/Checkable;


# instance fields
.field private a:Z

.field private b:Landroid/support/v7/widget/SwitchCompat;

.field private c:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/SettingItem;->a:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/widget/SettingItem;->toggle()V

    .line 58
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 30
    invoke-virtual {p0, p0}, Lcom/ushaqi/zhuishushenqi/widget/SettingItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    const v0, 0x7f0c040e

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/SettingItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/SettingItem;->b:Landroid/support/v7/widget/SwitchCompat;

    .line 32
    return-void
.end method

.method public setCheckListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/SettingItem;->c:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 62
    return-void
.end method

.method public setChecked(Z)V
    .locals 3

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/SettingItem;->a:Z

    if-eq v0, p1, :cond_0

    .line 47
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/widget/SettingItem;->a:Z

    .line 48
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/SettingItem;->b:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 49
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/SettingItem;->c:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/SettingItem;->c:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/SettingItem;->b:Landroid/support/v7/widget/SwitchCompat;

    iget-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/widget/SettingItem;->a:Z

    invoke-interface {v0, v1, v2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 53
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/widget/SettingItem;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/widget/SettingItem;->setChecked(Z)V

    .line 37
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
