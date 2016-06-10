.class public Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/reader/bZ;

.field private b:Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/CheckBox;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->b()V

    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;)Lcom/ushaqi/zhuishushenqi/reader/bZ;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->a:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 234
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->a:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->c()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 244
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 245
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 248
    :goto_0
    return-void

    .line 236
    :sswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 237
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 240
    :sswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 241
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 234
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->e:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;)Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1251
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->setVisibility(I)V

    .line 264
    :goto_0
    return-void

    .line 1255
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Lcom/ushaqi/zhuishushenqi/reader/db;)V
    .locals 2

    .prologue
    .line 207
    const v0, 0x7f0c0445

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 208
    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/da;

    invoke-direct {v1, p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/da;-><init>(Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;Lcom/ushaqi/zhuishushenqi/reader/db;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    return-void
.end method

.method public final a(Lcom/ushaqi/zhuishushenqi/reader/dc;)V
    .locals 2

    .prologue
    .line 220
    const v0, 0x7f0c0440

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_0

    .line 222
    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/cS;

    invoke-direct {v1, p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/cS;-><init>(Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;Lcom/ushaqi/zhuishushenqi/reader/dc;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public setReadOptionEnable(Z)V
    .locals 2

    .prologue
    .line 110
    const v0, 0x7f0c0440

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->c:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 112
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->d:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 113
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 114
    return-void
.end method

.method public setReaderStyle(Lcom/ushaqi/zhuishushenqi/reader/bZ;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 55
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->a:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    .line 56
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/cR;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/cR;-><init>(Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;)V

    invoke-virtual {p1, v0}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->a(Lcom/ushaqi/zhuishushenqi/reader/cc;)V

    .line 1085
    const v0, 0x7f0c043f

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->c:Landroid/view/View;

    .line 1086
    const v0, 0x7f0c043e

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->d:Landroid/view/View;

    .line 1088
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->c:Landroid/view/View;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/cT;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/cT;-><init>(Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1095
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->d:Landroid/view/View;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/cU;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/cU;-><init>(Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1102
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->b()V

    .line 1120
    const v0, 0x7f0c043d

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->e:Landroid/widget/CheckBox;

    .line 1121
    const v0, 0x7f0c043c

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 1122
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->a:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1123
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->e:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->a:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->g()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1124
    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/cV;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/cV;-><init>(Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1144
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->e:Landroid/widget/CheckBox;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/cW;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/cW;-><init>(Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1156
    const v0, 0x7f0c0442

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->f:Landroid/widget/ImageView;

    .line 1157
    const v0, 0x7f0c0443

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->g:Landroid/widget/ImageView;

    .line 1158
    const v0, 0x7f0c0444

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->h:Landroid/widget/ImageView;

    .line 1160
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->a:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->j()I

    move-result v0

    .line 1161
    if-ne v0, v3, :cond_1

    .line 1162
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1168
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/cX;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/cX;-><init>(Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1181
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/cY;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/cY;-><init>(Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1191
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/cZ;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/cZ;-><init>(Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void

    .line 1163
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1164
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 1165
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1166
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0
.end method

.method public setReaderStyle(Lcom/ushaqi/zhuishushenqi/reader/bZ;Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;)V
    .locals 0

    .prologue
    .line 66
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;

    .line 67
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->setReaderStyle(Lcom/ushaqi/zhuishushenqi/reader/bZ;)V

    .line 68
    return-void
.end method
