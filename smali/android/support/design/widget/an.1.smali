.class final Landroid/support/design/widget/an;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final a:Landroid/support/design/widget/am;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private synthetic g:Landroid/support/design/widget/TabLayout;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;Landroid/support/design/widget/am;)V
    .locals 4

    .prologue
    .line 1103
    iput-object p1, p0, Landroid/support/design/widget/an;->g:Landroid/support/design/widget/TabLayout;

    .line 1104
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1105
    iput-object p3, p0, Landroid/support/design/widget/an;->a:Landroid/support/design/widget/am;

    .line 1106
    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1107
    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout;)I

    move-result v0

    invoke-static {p2, v0}, Landroid/support/v7/internal/widget/Y;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/an;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1109
    :cond_0
    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->b(Landroid/support/design/widget/TabLayout;)I

    move-result v0

    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->c(Landroid/support/design/widget/TabLayout;)I

    move-result v1

    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->d(Landroid/support/design/widget/TabLayout;)I

    move-result v2

    invoke-static {p1}, Landroid/support/design/widget/TabLayout;->e(Landroid/support/design/widget/TabLayout;)I

    move-result v3

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 1111
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/support/design/widget/an;->setGravity(I)V

    .line 1112
    invoke-virtual {p0}, Landroid/support/design/widget/an;->a()V

    .line 1113
    return-void
.end method

.method private a(Landroid/support/design/widget/am;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1221
    .line 1222
    invoke-virtual {p1}, Landroid/support/design/widget/am;->b()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1224
    if-eqz p3, :cond_0

    .line 1225
    if-eqz v3, :cond_2

    .line 1226
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1227
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1228
    invoke-virtual {p0, v1}, Landroid/support/design/widget/an;->setVisibility(I)V

    .line 1233
    :goto_0
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1236
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 1237
    :goto_1
    if-eqz p2, :cond_1

    .line 1238
    if-eqz v0, :cond_4

    .line 1239
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1240
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1241
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1242
    invoke-virtual {p0, v1}, Landroid/support/design/widget/an;->setVisibility(I)V

    .line 1249
    :cond_1
    :goto_2
    if-nez v0, :cond_5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1250
    invoke-virtual {p0, p0}, Landroid/support/design/widget/an;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1255
    :goto_3
    return-void

    .line 1230
    :cond_2
    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1231
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1236
    goto :goto_1

    .line 1244
    :cond_4
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1245
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1252
    :cond_5
    invoke-virtual {p0, v3}, Landroid/support/design/widget/an;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1253
    invoke-virtual {p0, v1}, Landroid/support/design/widget/an;->setLongClickable(Z)V

    goto :goto_3
.end method


# virtual methods
.method final a()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1162
    iget-object v1, p0, Landroid/support/design/widget/an;->a:Landroid/support/design/widget/am;

    .line 1164
    if-eqz v2, :cond_8

    .line 1165
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1166
    if-eq v0, p0, :cond_1

    .line 1167
    if-eqz v0, :cond_0

    .line 1168
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1170
    :cond_0
    invoke-virtual {p0, v2}, Landroid/support/design/widget/an;->addView(Landroid/view/View;)V

    .line 1172
    :cond_1
    iput-object v2, p0, Landroid/support/design/widget/an;->d:Landroid/view/View;

    .line 1173
    iget-object v0, p0, Landroid/support/design/widget/an;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1174
    iget-object v0, p0, Landroid/support/design/widget/an;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1176
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/an;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 1177
    iget-object v0, p0, Landroid/support/design/widget/an;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1178
    iget-object v0, p0, Landroid/support/design/widget/an;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1181
    :cond_3
    const v0, 0x1020014

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/design/widget/an;->e:Landroid/widget/TextView;

    .line 1182
    const v0, 0x1020006

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/design/widget/an;->f:Landroid/widget/ImageView;

    .line 1193
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/an;->d:Landroid/view/View;

    if-nez v0, :cond_a

    .line 1195
    iget-object v0, p0, Landroid/support/design/widget/an;->c:Landroid/widget/ImageView;

    if-nez v0, :cond_4

    .line 1196
    invoke-virtual {p0}, Landroid/support/design/widget/an;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Landroid/support/design/R$layout;->layout_tab_icon:I

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1198
    invoke-virtual {p0, v0, v3}, Landroid/support/design/widget/an;->addView(Landroid/view/View;I)V

    .line 1199
    iput-object v0, p0, Landroid/support/design/widget/an;->c:Landroid/widget/ImageView;

    .line 1201
    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/an;->b:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 1202
    invoke-virtual {p0}, Landroid/support/design/widget/an;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Landroid/support/design/R$layout;->layout_tab_text:I

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1204
    invoke-virtual {p0, v0}, Landroid/support/design/widget/an;->addView(Landroid/view/View;)V

    .line 1205
    iput-object v0, p0, Landroid/support/design/widget/an;->b:Landroid/widget/TextView;

    .line 1207
    :cond_5
    iget-object v0, p0, Landroid/support/design/widget/an;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/an;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/support/design/widget/an;->g:Landroid/support/design/widget/TabLayout;

    invoke-static {v3}, Landroid/support/design/widget/TabLayout;->h(Landroid/support/design/widget/TabLayout;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1208
    iget-object v0, p0, Landroid/support/design/widget/an;->g:Landroid/support/design/widget/TabLayout;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->i(Landroid/support/design/widget/TabLayout;)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1209
    iget-object v0, p0, Landroid/support/design/widget/an;->b:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/widget/an;->g:Landroid/support/design/widget/TabLayout;

    invoke-static {v2}, Landroid/support/design/widget/TabLayout;->i(Landroid/support/design/widget/TabLayout;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1211
    :cond_6
    iget-object v0, p0, Landroid/support/design/widget/an;->b:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/widget/an;->c:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0, v2}, Landroid/support/design/widget/an;->a(Landroid/support/design/widget/am;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 1218
    :cond_7
    :goto_1
    return-void

    .line 1185
    :cond_8
    iget-object v0, p0, Landroid/support/design/widget/an;->d:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 1186
    iget-object v0, p0, Landroid/support/design/widget/an;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/an;->removeView(Landroid/view/View;)V

    .line 1187
    iput-object v2, p0, Landroid/support/design/widget/an;->d:Landroid/view/View;

    .line 1189
    :cond_9
    iput-object v2, p0, Landroid/support/design/widget/an;->e:Landroid/widget/TextView;

    .line 1190
    iput-object v2, p0, Landroid/support/design/widget/an;->f:Landroid/widget/ImageView;

    goto :goto_0

    .line 1214
    :cond_a
    iget-object v0, p0, Landroid/support/design/widget/an;->e:Landroid/widget/TextView;

    if-nez v0, :cond_b

    iget-object v0, p0, Landroid/support/design/widget/an;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 1215
    :cond_b
    iget-object v0, p0, Landroid/support/design/widget/an;->e:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/design/widget/an;->f:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0, v2}, Landroid/support/design/widget/an;->a(Landroid/support/design/widget/am;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_1
.end method

.method public final b()Landroid/support/design/widget/am;
    .locals 1

    .prologue
    .line 1278
    iget-object v0, p0, Landroid/support/design/widget/an;->a:Landroid/support/design/widget/am;

    return-object v0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1134
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1136
    const-class v0, Landroid/support/v7/app/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1137
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1142
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1144
    const-class v0, Landroid/support/v7/app/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1145
    return-void
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1259
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1260
    invoke-virtual {p0, v0}, Landroid/support/design/widget/an;->getLocationOnScreen([I)V

    .line 1262
    invoke-virtual {p0}, Landroid/support/design/widget/an;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1263
    invoke-virtual {p0}, Landroid/support/design/widget/an;->getWidth()I

    move-result v2

    .line 1264
    invoke-virtual {p0}, Landroid/support/design/widget/an;->getHeight()I

    move-result v3

    .line 1265
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1267
    iget-object v5, p0, Landroid/support/design/widget/an;->a:Landroid/support/design/widget/am;

    .line 5090
    const/4 v5, 0x0

    .line 1267
    invoke-static {v1, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1270
    const/16 v5, 0x31

    aget v0, v0, v6

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    div-int/lit8 v2, v4, 0x2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v5, v0, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 1273
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1274
    const/4 v0, 0x1

    return v0
.end method

.method public final onMeasure(II)V
    .locals 3

    .prologue
    .line 1149
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1151
    invoke-virtual {p0}, Landroid/support/design/widget/an;->getMeasuredWidth()I

    move-result v0

    .line 1152
    iget-object v1, p0, Landroid/support/design/widget/an;->g:Landroid/support/design/widget/TabLayout;

    invoke-static {v1}, Landroid/support/design/widget/TabLayout;->f(Landroid/support/design/widget/TabLayout;)I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/an;->g:Landroid/support/design/widget/TabLayout;

    invoke-static {v1}, Landroid/support/design/widget/TabLayout;->g(Landroid/support/design/widget/TabLayout;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1154
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/an;->g:Landroid/support/design/widget/TabLayout;

    invoke-static {v1}, Landroid/support/design/widget/TabLayout;->f(Landroid/support/design/widget/TabLayout;)I

    move-result v1

    iget-object v2, p0, Landroid/support/design/widget/an;->g:Landroid/support/design/widget/TabLayout;

    invoke-static {v2}, Landroid/support/design/widget/TabLayout;->g(Landroid/support/design/widget/TabLayout;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/d;->a(III)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1157
    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1159
    :cond_1
    return-void
.end method

.method public final setSelected(Z)V
    .locals 1

    .prologue
    .line 1117
    invoke-virtual {p0}, Landroid/support/design/widget/an;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_2

    const/4 v0, 0x1

    .line 1118
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 1119
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1120
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/design/widget/an;->sendAccessibilityEvent(I)V

    .line 1122
    iget-object v0, p0, Landroid/support/design/widget/an;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1123
    iget-object v0, p0, Landroid/support/design/widget/an;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1125
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/an;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1126
    iget-object v0, p0, Landroid/support/design/widget/an;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1129
    :cond_1
    return-void

    .line 1117
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
