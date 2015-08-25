.class public Landroid/webkitsec/HtmlComposerView;
.super Landroid/webkitsec/WebView;
.source "HtmlComposerView.java"

# interfaces
.implements Landroid/webkitsec/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/HtmlComposerView$CursorDirection;,
        Landroid/webkitsec/HtmlComposerView$SelectionOffset;,
        Landroid/webkitsec/HtmlComposerView$ResultTransport;,
        Landroid/webkitsec/HtmlComposerView$HCWHandler;,
        Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;,
        Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;,
        Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;,
        Landroid/webkitsec/HtmlComposerView$StylusEventListener;,
        Landroid/webkitsec/HtmlComposerView$MenuHandler;,
        Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;,
        Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;,
        Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;,
        Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;,
        Landroid/webkitsec/HtmlComposerView$InsertionPosition;
    }
.end annotation


# static fields
.field public static final ACTION_SEC_TRANSLATE_FOR_NON_ACTIVITY:Ljava/lang/String; = "com.sec.android.app.translator.TRANSLATE_FOR_NON_ACTIVITY"

.field public static final ACTION_SEC_TRANSLATE_RESULT:Ljava/lang/String; = "com.sec.android.app.translator.TRANSLATE_RESULT"

.field public static final DELAYED_UPDATE_IMAGE_OUTLINE:I = 0x503

.field public static final EXTRA_NAME_AUTO_START_TRANSLATION:Ljava/lang/String; = "auto_start_translation"

.field public static final EXTRA_NAME_CALLER:Ljava/lang/String; = "caller"

.field public static final EXTRA_NAME_HTML_SOURCE_TEXT:Ljava/lang/String; = "html_source_text"

.field public static final EXTRA_NAME_MODE:Ljava/lang/String; = "mode"

.field public static final EXTRA_NAME_RESULT_CODE:Ljava/lang/String; = "result_code"

.field public static final EXTRA_NAME_SOURCE_LANGUAGE:Ljava/lang/String; = "source_language"

.field public static final EXTRA_NAME_SOURCE_TEXT:Ljava/lang/String; = "source_text"

.field public static final EXTRA_NAME_TARGET_LANGUAGE:Ljava/lang/String; = "target_language"

.field public static final EXTRA_NAME_TARGET_TEXT:Ljava/lang/String; = "target_text"

.field public static final EXTRA_NAME_USE_BROADCAST_RECEIVER:Ljava/lang/String; = "use_broadcast_receiver"

.field private static final EXTRA_REGION_FOR_RESIZING_HANDLER:I = 0x1e

.field public static final EXTRA_VALUE_CLIENT_ID:Ljava/lang/String; = "client_id"

.field public static final EXTRA_VALUE_INPUT_MODE:Ljava/lang/String; = "input"

.field public static final EXTRA_VALUE_RESULT_CANCEL:I = 0x0

.field public static final EXTRA_VALUE_RESULT_OK:I = 0x1

.field public static final HIT_INSERTED_IMAGE:I = 0x502

.field public static final ID_COPY:I = 0x1020021

.field public static final ID_COPY_ALL:I = 0x1020409

.field public static final ID_CUT:I = 0x1020020

.field public static final ID_CUT_ALL:I = 0x1020408

.field public static final ID_PASTE:I = 0x1020022

.field public static final ID_PASTE_CLIPBOARD:I = 0x102040a

.field public static final ID_REDO:I = 0x65

.field public static final ID_SELECT_ALL:I = 0x102001f

.field public static final ID_START_SELECTION:I = 0x1020028

.field public static final ID_SWITCH_INPUT_METHOD:I = 0x1020024

.field public static final ID_UNDO:I = 0x2711

.field public static final INVOKE_TALKBACK:I = 0x500

.field static final LOGTAG:Ljava/lang/String; = "HtmlComposerView"

.field private static final MINIMUM_SIZE_FOR_RESIZING:I = 0xa

.field public static final RICHLY_EDITING_STATE_ALIGNCENTER:I = 0x1000

.field public static final RICHLY_EDITING_STATE_ALIGNCENTER_MIXED:I = 0x2000

.field public static final RICHLY_EDITING_STATE_ALIGNLEFT:I = 0x400

.field public static final RICHLY_EDITING_STATE_ALIGNLEFT_MIXED:I = 0x800

.field public static final RICHLY_EDITING_STATE_ALIGNRIGHT:I = 0x4000

.field public static final RICHLY_EDITING_STATE_ALIGNRIGHT_MIXED:I = 0x8000

.field public static final RICHLY_EDITING_STATE_BOLD:I = 0x1

.field public static final RICHLY_EDITING_STATE_BOLD_MIXED:I = 0x2

.field public static final RICHLY_EDITING_STATE_ITALIC:I = 0x4

.field public static final RICHLY_EDITING_STATE_ITALIC_MIXED:I = 0x8

.field public static final RICHLY_EDITING_STATE_NONE:I = 0x0

.field public static final RICHLY_EDITING_STATE_ORDEREDLIST:I = 0x40

.field public static final RICHLY_EDITING_STATE_ORDEREDLIST_MIXED:I = 0x80

.field public static final RICHLY_EDITING_STATE_UNDERLINE:I = 0x10

.field public static final RICHLY_EDITING_STATE_UNDERLINE_MIXED:I = 0x20

.field public static final RICHLY_EDITING_STATE_UNORDEREDLIST:I = 0x100

.field public static final RICHLY_EDITING_STATE_UNORDEREDLIST_MIXED:I = 0x200

.field public static final SELECTION_CHANGE_EVENT:I = 0x504

.field public static final TOUCH_DRAG_DELTA:I = 0xa

.field public static final UPDATE_RICHTEXT_TOOLBAR:I = 0x501

.field protected static mGVR:Landroid/graphics/Rect;

.field public static operSel:I


# instance fields
.field public DEBUG:Z

.field public final EMPTY_STRING:Ljava/lang/String;

.field private bLastSoftKeyPadStateShowing:Z

.field bitmap:Landroid/graphics/Bitmap;

.field bottomMiddleCropHandler:Landroid/graphics/Rect;

.field private bottomMiddleHandleEnabled:Z

.field public clpBrdStrg:Ljava/lang/String;

.field private defaultLoadString:Ljava/lang/String;

.field private extraHeightRegionToCover:I

.field extraRegiontoCover:I

.field private firstOutlineLeft:F

.field private firstOutlineTop:F

.field handlesPath:Landroid/graphics/Path;

.field private ignoreMaxLength:Z

.field public imageCanbeMoved:Z

.field public imageCanbeResized:Z

.field private imageSelectedX:I

.field private imageSelectedY:I

.field imagetRect:Landroid/graphics/RectF;

.field imeOptions:I

.field imgHeight:F

.field imgWidth:F

.field protected isContextMenuVisible:Z

.field public isImageSelected:Z

.field private isInComposingState:Z

.field private isPhone:Z

.field private isSelectionset:Z

.field public isTouchedImage:Z

.field private isViewInFocus:Z

.field leftBottomCropHandler:Landroid/graphics/Rect;

.field private leftBottomHandleEnabled:Z

.field leftMiddleCropHandler:Landroid/graphics/Rect;

.field private leftMiddleHandleEnabled:Z

.field leftTopCropHandler:Landroid/graphics/Rect;

.field private leftTopHandleEnabled:Z

.field private mAdd:I

.field private mAltKeyIsPressed:Z

.field private mByHWKeyCommand:Z

.field private mCaller:Ljava/lang/String;

.field private mContentX:I

.field private mContentY:I

.field private mConversionFactorX:I

.field private mConversionFactorY:I

.field private mCtrlKeyIsPressed:Z

.field private mCurSelEnd:I

.field private mCurSelStart:I

.field private mDensity:F

.field private mEmojiIsActive:Z

.field public mHCVSelectionChangedCallback:Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

.field private mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

.field public mHtmlComposerViewCursorHandlerListener:Landroid/webkitsec/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;

.field public mImageRect:Landroid/graphics/Rect;

.field public mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

.field private mIsInRotation:Z

.field private mIsPenSelection:Z

.field private mIsSCHMenu:Z

.field private mIsTouchedCursor:Z

.field private mKeyIsLongPressed:Z

.field private mLongPressForActionPopup:Z

.field private mLongPressForSelectionCallback:Z

.field protected mLongPressed:Z

.field public mMaxHtmlLength:I

.field mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

.field private mPasteListener:Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

.field private mPenSelectVibrator:Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;

.field private mPrevRHIResource:I

.field private mPrivateOptions:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRectNotScrolled:Z

.field private mRemove:I

.field public mRichTextFormatChangedListener:Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

.field private mSCHMoveFlag:Z

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSelectionHandlerIsShown:Z

.field private mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

.field private mShiftKeyIsPressed:Z

.field mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

.field private mSymKeyIsPressed:Z

.field mTargetView:Landroid/webkitsec/HtmlComposerView;

.field private mTextInput:Landroid/text/method/TextKeyListener;

.field private mToastForClipboard:Landroid/widget/Toast;

.field private mToastForMaxLength:Landroid/widget/Toast;

.field private mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mWebViewClassic:Landroid/webkitsec/WebViewClassic;

.field private mZoomFactor:F

.field private misResizeControlsInitialised:Z

.field public myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

.field private originalHeight:I

.field private originalWidth:I

.field outLinePath:Landroid/graphics/Path;

.field p:Landroid/graphics/Path;

.field private prevOutlineHeight:F

.field private prevOutlineLeft:F

.field private prevOutlineTop:F

.field private prevOutlineWidth:F

.field private prevSpanComposerText:Ljava/lang/String;

.field prevX:I

.field prevY:I

.field private prevlen:I

.field region_rect_BM:Landroid/graphics/Region;

.field region_rect_LB:Landroid/graphics/Region;

.field region_rect_LM:Landroid/graphics/Region;

.field region_rect_LT:Landroid/graphics/Region;

.field region_rect_OutLine:Landroid/graphics/Region;

.field region_rect_RB:Landroid/graphics/Region;

.field region_rect_RM:Landroid/graphics/Region;

.field region_rect_RT:Landroid/graphics/Region;

.field region_rect_TM:Landroid/graphics/Region;

.field public resizingHandlerInActionMove:Z

.field rightBottomCropHandler:Landroid/graphics/Rect;

.field rightBottomHandleEnabled:Z

.field rightMiddleCropHandler:Landroid/graphics/Rect;

.field private rightMiddleHandleEnabled:Z

.field rightTopCropHandler:Landroid/graphics/Rect;

.field private rightTopHandleEnabled:Z

.field private spanComposerText:Landroid/text/SpannableStringBuilder;

.field public strTexttoSpeech:Ljava/lang/String;

.field public textSelected:Ljava/lang/String;

.field textWatcher:Landroid/text/TextWatcher;

.field topMiddleCropHandler:Landroid/graphics/Rect;

.field private topMiddleHandleEnabled:Z

.field widthOfHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 337
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    .line 538
    const/4 v0, 0x0

    sput v0, Landroid/webkitsec/HtmlComposerView;->operSel:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 406
    invoke-direct {p0, p1}, Landroid/webkitsec/WebView;-><init>(Landroid/content/Context;)V

    .line 150
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    .line 151
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    .line 152
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z

    .line 153
    const-string v0, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true></body></html>"

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 154
    const v0, 0x420000ff    # 32.000973f

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->imeOptions:I

    .line 155
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    .line 156
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isViewInFocus:Z

    .line 157
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mPasteListener:Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

    .line 158
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mScreenHeight:I

    .line 159
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mScreenWidth:I

    .line 160
    const v0, 0x186a0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mMaxHtmlLength:I

    .line 161
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->ignoreMaxLength:Z

    .line 163
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 164
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mAltKeyIsPressed:Z

    .line 165
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    .line 166
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mEmojiIsActive:Z

    .line 167
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsTouchedCursor:Z

    .line 168
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mTextInput:Landroid/text/method/TextKeyListener;

    .line 169
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->prevlen:I

    .line 170
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 171
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 172
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 173
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 174
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    .line 175
    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->EMPTY_STRING:Ljava/lang/String;

    .line 176
    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->strTexttoSpeech:Ljava/lang/String;

    .line 177
    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 178
    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 180
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    .line 181
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

    .line 183
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    .line 185
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->misResizeControlsInitialised:Z

    .line 186
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    .line 187
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    .line 188
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mAdd:I

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mRemove:I

    .line 190
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsInRotation:Z

    .line 192
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    .line 193
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 195
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    .line 198
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mPrevRHIResource:I

    .line 201
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressed:Z

    .line 202
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    .line 203
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mByHWKeyCommand:Z

    .line 205
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForSelectionCallback:Z

    .line 208
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToastForClipboard:Landroid/widget/Toast;

    .line 209
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToastForMaxLength:Landroid/widget/Toast;

    .line 211
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

    .line 268
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    .line 270
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->imgHeight:F

    .line 271
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    .line 274
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 275
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 276
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    .line 277
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    .line 279
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    .line 281
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    .line 282
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    .line 283
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    .line 284
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    .line 285
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    .line 287
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 288
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 289
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    .line 290
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    .line 292
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    .line 293
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    .line 294
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    .line 295
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    .line 297
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 298
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 299
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 300
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 307
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 308
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 309
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 310
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 312
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->p:Landroid/graphics/Path;

    .line 339
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    .line 344
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHCVSelectionChangedCallback:Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

    .line 348
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mCaller:Ljava/lang/String;

    .line 349
    new-instance v0, Landroid/webkitsec/HtmlComposerView$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/HtmlComposerView$1;-><init>(Landroid/webkitsec/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 552
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    .line 553
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    .line 554
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mSCHMoveFlag:Z

    .line 2391
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    .line 2392
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mPenSelectVibrator:Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;

    .line 2393
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsPenSelection:Z

    .line 6127
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    .line 6128
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeMoved:Z

    .line 6129
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    .line 6130
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->resizingHandlerInActionMove:Z

    .line 6320
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    .line 6321
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mRectNotScrolled:Z

    .line 6323
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isTouchedImage:Z

    .line 6324
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    .line 6326
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForActionPopup:Z

    .line 6328
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->isPhone:Z

    .line 407
    iput-object p0, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    .line 408
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 412
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 150
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    .line 151
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    .line 152
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z

    .line 153
    const-string v0, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true></body></html>"

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 154
    const v0, 0x420000ff    # 32.000973f

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->imeOptions:I

    .line 155
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    .line 156
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isViewInFocus:Z

    .line 157
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mPasteListener:Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

    .line 158
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mScreenHeight:I

    .line 159
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mScreenWidth:I

    .line 160
    const v0, 0x186a0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mMaxHtmlLength:I

    .line 161
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->ignoreMaxLength:Z

    .line 163
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 164
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mAltKeyIsPressed:Z

    .line 165
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    .line 166
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mEmojiIsActive:Z

    .line 167
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsTouchedCursor:Z

    .line 168
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mTextInput:Landroid/text/method/TextKeyListener;

    .line 169
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->prevlen:I

    .line 170
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 171
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 172
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 173
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 174
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    .line 175
    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->EMPTY_STRING:Ljava/lang/String;

    .line 176
    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->strTexttoSpeech:Ljava/lang/String;

    .line 177
    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 178
    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 180
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    .line 181
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

    .line 183
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    .line 185
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->misResizeControlsInitialised:Z

    .line 186
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    .line 187
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    .line 188
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mAdd:I

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mRemove:I

    .line 190
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsInRotation:Z

    .line 192
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    .line 193
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 195
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    .line 198
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mPrevRHIResource:I

    .line 201
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressed:Z

    .line 202
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    .line 203
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mByHWKeyCommand:Z

    .line 205
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForSelectionCallback:Z

    .line 208
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToastForClipboard:Landroid/widget/Toast;

    .line 209
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToastForMaxLength:Landroid/widget/Toast;

    .line 211
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

    .line 268
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    .line 270
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->imgHeight:F

    .line 271
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    .line 274
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 275
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 276
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    .line 277
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    .line 279
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    .line 281
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    .line 282
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    .line 283
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    .line 284
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    .line 285
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    .line 287
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 288
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 289
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    .line 290
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    .line 292
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    .line 293
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    .line 294
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    .line 295
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    .line 297
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 298
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 299
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 300
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 307
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 308
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 309
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 310
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 312
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->p:Landroid/graphics/Path;

    .line 339
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    .line 344
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHCVSelectionChangedCallback:Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

    .line 348
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mCaller:Ljava/lang/String;

    .line 349
    new-instance v0, Landroid/webkitsec/HtmlComposerView$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/HtmlComposerView$1;-><init>(Landroid/webkitsec/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 552
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    .line 553
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    .line 554
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mSCHMoveFlag:Z

    .line 2391
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    .line 2392
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mPenSelectVibrator:Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;

    .line 2393
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsPenSelection:Z

    .line 6127
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    .line 6128
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeMoved:Z

    .line 6129
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    .line 6130
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->resizingHandlerInActionMove:Z

    .line 6320
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    .line 6321
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mRectNotScrolled:Z

    .line 6323
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isTouchedImage:Z

    .line 6324
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    .line 6326
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForActionPopup:Z

    .line 6328
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->isPhone:Z

    .line 413
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 417
    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 150
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    .line 151
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    .line 152
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z

    .line 153
    const-string v0, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true></body></html>"

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 154
    const v0, 0x420000ff    # 32.000973f

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->imeOptions:I

    .line 155
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    .line 156
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isViewInFocus:Z

    .line 157
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mPasteListener:Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

    .line 158
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mScreenHeight:I

    .line 159
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mScreenWidth:I

    .line 160
    const v0, 0x186a0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mMaxHtmlLength:I

    .line 161
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->ignoreMaxLength:Z

    .line 163
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 164
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mAltKeyIsPressed:Z

    .line 165
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    .line 166
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mEmojiIsActive:Z

    .line 167
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsTouchedCursor:Z

    .line 168
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mTextInput:Landroid/text/method/TextKeyListener;

    .line 169
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->prevlen:I

    .line 170
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 171
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 172
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 173
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 174
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    .line 175
    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->EMPTY_STRING:Ljava/lang/String;

    .line 176
    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->strTexttoSpeech:Ljava/lang/String;

    .line 177
    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 178
    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 180
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    .line 181
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

    .line 183
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    .line 185
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->misResizeControlsInitialised:Z

    .line 186
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    .line 187
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    .line 188
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mAdd:I

    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mRemove:I

    .line 190
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsInRotation:Z

    .line 192
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    .line 193
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 195
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    .line 198
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mPrevRHIResource:I

    .line 201
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressed:Z

    .line 202
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    .line 203
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mByHWKeyCommand:Z

    .line 205
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForSelectionCallback:Z

    .line 208
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToastForClipboard:Landroid/widget/Toast;

    .line 209
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToastForMaxLength:Landroid/widget/Toast;

    .line 211
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

    .line 268
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    .line 270
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->imgHeight:F

    .line 271
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    .line 274
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 275
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 276
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    .line 277
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    .line 279
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    .line 281
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    .line 282
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    .line 283
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    .line 284
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    .line 285
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    .line 287
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 288
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 289
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    .line 290
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    .line 292
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    .line 293
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    .line 294
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    .line 295
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    .line 297
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 298
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 299
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 300
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 307
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 308
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 309
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 310
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 312
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->p:Landroid/graphics/Path;

    .line 339
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    .line 344
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHCVSelectionChangedCallback:Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

    .line 348
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mCaller:Ljava/lang/String;

    .line 349
    new-instance v0, Landroid/webkitsec/HtmlComposerView$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/HtmlComposerView$1;-><init>(Landroid/webkitsec/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 552
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    .line 553
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    .line 554
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mSCHMoveFlag:Z

    .line 2391
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    .line 2392
    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mPenSelectVibrator:Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;

    .line 2393
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mIsPenSelection:Z

    .line 6127
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    .line 6128
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeMoved:Z

    .line 6129
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    .line 6130
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->resizingHandlerInActionMove:Z

    .line 6320
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    .line 6321
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mRectNotScrolled:Z

    .line 6323
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isTouchedImage:Z

    .line 6324
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    .line 6326
    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForActionPopup:Z

    .line 6328
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->isPhone:Z

    .line 418
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 422
    invoke-direct {p0, p1}, Landroid/webkitsec/WebView;-><init>(Landroid/content/Context;)V

    .line 150
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    .line 151
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    .line 152
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z

    .line 153
    const-string v1, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true></body></html>"

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 154
    const v1, 0x420000ff    # 32.000973f

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->imeOptions:I

    .line 155
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    .line 156
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isViewInFocus:Z

    .line 157
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mPasteListener:Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

    .line 158
    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->mScreenHeight:I

    .line 159
    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->mScreenWidth:I

    .line 160
    const v1, 0x186a0

    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->mMaxHtmlLength:I

    .line 161
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->ignoreMaxLength:Z

    .line 163
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 164
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mAltKeyIsPressed:Z

    .line 165
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    .line 166
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mEmojiIsActive:Z

    .line 167
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mIsTouchedCursor:Z

    .line 168
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mTextInput:Landroid/text/method/TextKeyListener;

    .line 169
    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->prevlen:I

    .line 170
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 171
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 172
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 173
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 174
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    .line 175
    const-string v1, ""

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->EMPTY_STRING:Ljava/lang/String;

    .line 176
    const-string v1, ""

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->strTexttoSpeech:Ljava/lang/String;

    .line 177
    const-string v1, ""

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 178
    const-string v1, ""

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 180
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    .line 181
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

    .line 183
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    .line 185
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->misResizeControlsInitialised:Z

    .line 186
    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    .line 187
    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    .line 188
    iput v5, p0, Landroid/webkitsec/HtmlComposerView;->mAdd:I

    iput v5, p0, Landroid/webkitsec/HtmlComposerView;->mRemove:I

    .line 190
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mIsInRotation:Z

    .line 192
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    .line 193
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 195
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    .line 198
    iput v5, p0, Landroid/webkitsec/HtmlComposerView;->mPrevRHIResource:I

    .line 201
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressed:Z

    .line 202
    iput-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    .line 203
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mByHWKeyCommand:Z

    .line 205
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForSelectionCallback:Z

    .line 208
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mToastForClipboard:Landroid/widget/Toast;

    .line 209
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mToastForMaxLength:Landroid/widget/Toast;

    .line 211
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

    .line 268
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    .line 270
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->imgHeight:F

    .line 271
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    .line 274
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 275
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 276
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    .line 277
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    .line 279
    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    .line 281
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    .line 282
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    .line 283
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    .line 284
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    .line 285
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    .line 287
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 288
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 289
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    .line 290
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    .line 292
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    .line 293
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    .line 294
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    .line 295
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    .line 297
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 298
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 299
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 300
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 307
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 308
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 309
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 310
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 312
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->p:Landroid/graphics/Path;

    .line 339
    iput-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    .line 344
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHCVSelectionChangedCallback:Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

    .line 348
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mCaller:Ljava/lang/String;

    .line 349
    new-instance v1, Landroid/webkitsec/HtmlComposerView$1;

    invoke-direct {v1, p0}, Landroid/webkitsec/HtmlComposerView$1;-><init>(Landroid/webkitsec/HtmlComposerView;)V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 552
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    .line 553
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    .line 554
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mSCHMoveFlag:Z

    .line 2391
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    .line 2392
    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mPenSelectVibrator:Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;

    .line 2393
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mIsPenSelection:Z

    .line 6127
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    .line 6128
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeMoved:Z

    .line 6129
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    .line 6130
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->resizingHandlerInActionMove:Z

    .line 6320
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    .line 6321
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mRectNotScrolled:Z

    .line 6323
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isTouchedImage:Z

    .line 6324
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    .line 6326
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForActionPopup:Z

    .line 6328
    iput-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->isPhone:Z

    .line 423
    invoke-direct {p0, p2}, Landroid/webkitsec/HtmlComposerView;->getLoadableContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "data":Ljava/lang/String;
    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method private HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x140

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 428
    invoke-virtual {p0, v8}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 429
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebViewProvider()Landroid/webkitsec/WebViewProvider;

    move-result-object v0

    check-cast v0, Landroid/webkitsec/WebViewClassic;

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    .line 430
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget v1, v1, Landroid/webkitsec/WebViewClassic;->maxArrayLimit:I

    new-array v1, v1, [I

    iput-object v1, v0, Landroid/webkitsec/WebViewClassic;->composerContentHeightArray:[I

    .line 431
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iput v8, v0, Landroid/webkitsec/WebViewClassic;->currentIndex:I

    .line 432
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/webkitsec/WebSettings;->setJavaScriptEnabled(Z)V

    .line 433
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/webkitsec/WebSettings;->setSupportZoom(Z)V

    .line 434
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkitsec/WebSettings;->setEditableSupport(Z)V

    .line 435
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkitsec/WebSettings;->setAdvancedCopyPasteFeature(Z)V

    .line 436
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/webkitsec/WebSettings;->setAdvanceCommands(Z)V

    .line 437
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkitsec/WebSettings;->setDisableAnimation(Z)V

    .line 439
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iput-boolean v7, v0, Landroid/webkitsec/WebViewClassic;->mDisableSelectionPopup:Z

    .line 442
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 443
    .local v6, "metric":Landroid/util/DisplayMetrics;
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 445
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    if-lt v0, v9, :cond_0

    .line 446
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkitsec/WebSettings;->setHighResolutionDevice(Z)V

    .line 448
    :cond_0
    iget v0, v6, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    .line 450
    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mScreenWidth:I

    .line 451
    iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mScreenHeight:I

    .line 453
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_3

    .line 454
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkitsec/WebSettings$ZoomDensity;->XXXFAR:Landroid/webkitsec/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettings;->setDefaultZoom(Landroid/webkitsec/WebSettings$ZoomDensity;)V

    .line 469
    :cond_1
    :goto_0
    new-instance v0, Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

    invoke-direct {v0, p0}, Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;-><init>(Landroid/webkitsec/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mPasteListener:Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

    .line 470
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 471
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mPasteListener:Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebClipboard;->setPasteListener(Landroid/webkitsec/WebClipboard$OnPasteFromSelectionUIListener;)V

    .line 472
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkitsec/WebClipboard;->setInterfaceWithClipboard(Z)V

    .line 475
    :cond_2
    const-string v1, "htmlcomposer"

    const-string/jumbo v4, "utf-8"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/webkitsec/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->enableEditing()V

    .line 478
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v7, v0}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mTextInput:Landroid/text/method/TextKeyListener;

    .line 479
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 480
    iput-object p0, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    .line 481
    iget v0, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    if-lt v0, v9, :cond_a

    .line 482
    new-instance v0, Landroid/webkitsec/HtmlComposerInputConnection;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Landroid/webkitsec/HtmlComposerInputConnection;-><init>(Landroid/webkitsec/HtmlComposerView;I)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    .line 486
    :goto_1
    new-instance v0, Landroid/webkitsec/HtmlComposerView$HCWHandler;

    invoke-direct {v0, p0}, Landroid/webkitsec/HtmlComposerView$HCWHandler;-><init>(Landroid/webkitsec/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    .line 488
    const-string/jumbo v0, "tablet"

    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 489
    iput-boolean v8, p0, Landroid/webkitsec/HtmlComposerView;->isPhone:Z

    .line 494
    :goto_2
    return-void

    .line 455
    :cond_3
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_4

    .line 456
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkitsec/WebSettings$ZoomDensity;->XXFAR:Landroid/webkitsec/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettings;->setDefaultZoom(Landroid/webkitsec/WebSettings$ZoomDensity;)V

    goto :goto_0

    .line 457
    :cond_4
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_5

    .line 458
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkitsec/WebSettings$ZoomDensity;->XFAR:Landroid/webkitsec/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettings;->setDefaultZoom(Landroid/webkitsec/WebSettings$ZoomDensity;)V

    goto/16 :goto_0

    .line 459
    :cond_5
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    cmpl-double v0, v0, v2

    if-nez v0, :cond_6

    .line 460
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkitsec/WebSettings$ZoomDensity;->FAR:Landroid/webkitsec/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettings;->setDefaultZoom(Landroid/webkitsec/WebSettings$ZoomDensity;)V

    goto/16 :goto_0

    .line 461
    :cond_6
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    const v1, 0x3faa6666

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    const v1, 0x3faa6667

    cmpl-float v0, v0, v1

    if-nez v0, :cond_8

    .line 462
    :cond_7
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkitsec/WebSettings$ZoomDensity;->SFAR:Landroid/webkitsec/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettings;->setDefaultZoom(Landroid/webkitsec/WebSettings$ZoomDensity;)V

    goto/16 :goto_0

    .line 463
    :cond_8
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_9

    .line 464
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkitsec/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkitsec/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettings;->setDefaultZoom(Landroid/webkitsec/WebSettings$ZoomDensity;)V

    goto/16 :goto_0

    .line 465
    :cond_9
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 466
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkitsec/WebSettings$ZoomDensity;->CLOSE:Landroid/webkitsec/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettings;->setDefaultZoom(Landroid/webkitsec/WebSettings$ZoomDensity;)V

    goto/16 :goto_0

    .line 484
    :cond_a
    new-instance v0, Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-direct {v0, p0}, Landroid/webkitsec/HtmlComposerInputConnection;-><init>(Landroid/webkitsec/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    goto/16 :goto_1

    .line 492
    :cond_b
    iput-boolean v7, p0, Landroid/webkitsec/HtmlComposerView;->isPhone:Z

    goto/16 :goto_2
.end method

.method static synthetic access$000(Landroid/webkitsec/HtmlComposerView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/HtmlComposerView;

    .prologue
    .line 148
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mCaller:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkitsec/HtmlComposerView;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/HtmlComposerView;

    .prologue
    .line 148
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/webkitsec/HtmlComposerView;)Landroid/webkitsec/HtmlComposerInputConnection;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/HtmlComposerView;

    .prologue
    .line 148
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/webkitsec/HtmlComposerView;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/HtmlComposerView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Landroid/webkitsec/HtmlComposerView;->insertImageWithResizing(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/webkitsec/HtmlComposerView;)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/HtmlComposerView;

    .prologue
    .line 148
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToastForClipboard:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1202(Landroid/webkitsec/HtmlComposerView;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/HtmlComposerView;
    .param p1, "x1"    # Landroid/widget/Toast;

    .prologue
    .line 148
    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView;->mToastForClipboard:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$1300(Landroid/webkitsec/HtmlComposerView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/HtmlComposerView;

    .prologue
    .line 148
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/webkitsec/HtmlComposerView;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/HtmlComposerView;

    .prologue
    .line 148
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffsetImage()V

    return-void
.end method

.method static synthetic access$1500(Landroid/webkitsec/HtmlComposerView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/HtmlComposerView;

    .prologue
    .line 148
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Landroid/webkitsec/HtmlComposerView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/HtmlComposerView;

    .prologue
    .line 148
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mIsPenSelection:Z

    return v0
.end method

.method static synthetic access$302(Landroid/webkitsec/HtmlComposerView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/HtmlComposerView;
    .param p1, "x1"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->mIsPenSelection:Z

    return p1
.end method

.method static synthetic access$400(Landroid/webkitsec/HtmlComposerView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/HtmlComposerView;

    .prologue
    .line 148
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Landroid/webkitsec/HtmlComposerView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/HtmlComposerView;

    .prologue
    .line 148
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Landroid/webkitsec/HtmlComposerView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/HtmlComposerView;

    .prologue
    .line 148
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Landroid/webkitsec/HtmlComposerView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/HtmlComposerView;

    .prologue
    .line 148
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Landroid/webkitsec/HtmlComposerView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/HtmlComposerView;

    .prologue
    .line 148
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$902(Landroid/webkitsec/HtmlComposerView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/HtmlComposerView;
    .param p1, "x1"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    return p1
.end method

.method private canSelectAll()Z
    .locals 1

    .prologue
    .line 4318
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4319
    const/4 v0, 0x1

    .line 4322
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearCursorOrRangeSelection()V
    .locals 2

    .prologue
    .line 4326
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4332
    :cond_0
    :goto_0
    return-void

    .line 4328
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    .line 4329
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4330
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x20b

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "dst"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 4336
    const/4 v3, 0x0

    .line 4337
    .local v3, "source":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 4339
    .local v5, "target":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4340
    .end local v3    # "source":Ljava/io/FileInputStream;
    .local v4, "source":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4342
    .end local v5    # "target":Ljava/io/FileOutputStream;
    .local v6, "target":Ljava/io/FileOutputStream;
    const/16 v8, 0x800

    :try_start_2
    new-array v0, v8, [B

    .line 4343
    .local v0, "buffer":[B
    const/4 v2, 0x0

    .line 4344
    .local v2, "i":I
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v8, -0x1

    if-eq v2, v8, :cond_2

    .line 4345
    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 4348
    .end local v0    # "buffer":[B
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    move-object v5, v6

    .end local v6    # "target":Ljava/io/FileOutputStream;
    .restart local v5    # "target":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 4349
    .end local v4    # "source":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "source":Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4357
    if-eqz v3, :cond_0

    .line 4358
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 4360
    :cond_0
    if-eqz v5, :cond_1

    .line 4361
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 4365
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_2
    return v7

    .line 4347
    .end local v3    # "source":Ljava/io/FileInputStream;
    .end local v5    # "target":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "i":I
    .restart local v4    # "source":Ljava/io/FileInputStream;
    .restart local v6    # "target":Ljava/io/FileOutputStream;
    :cond_2
    const/4 v8, 0x1

    .line 4357
    if-eqz v4, :cond_3

    .line 4358
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 4360
    :cond_3
    if-eqz v6, :cond_4

    .line 4361
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    move-object v5, v6

    .end local v6    # "target":Ljava/io/FileOutputStream;
    .restart local v5    # "target":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "source":Ljava/io/FileInputStream;
    .restart local v3    # "source":Ljava/io/FileInputStream;
    move v7, v8

    .line 4347
    goto :goto_2

    .line 4351
    .end local v0    # "buffer":[B
    .end local v2    # "i":I
    :catch_1
    move-exception v1

    .line 4352
    .local v1, "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4357
    if-eqz v3, :cond_5

    .line 4358
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 4360
    :cond_5
    if-eqz v5, :cond_1

    .line 4361
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_2

    .line 4363
    :catch_2
    move-exception v1

    .line 4364
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 4356
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 4357
    :goto_5
    if-eqz v3, :cond_6

    .line 4358
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 4360
    :cond_6
    if-eqz v5, :cond_7

    .line 4361
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 4356
    :cond_7
    throw v8

    .line 4363
    .end local v3    # "source":Ljava/io/FileInputStream;
    .end local v5    # "target":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "i":I
    .restart local v4    # "source":Ljava/io/FileInputStream;
    .restart local v6    # "target":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    .line 4364
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v5, v6

    .end local v6    # "target":Ljava/io/FileOutputStream;
    .restart local v5    # "target":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 4365
    .end local v4    # "source":Ljava/io/FileInputStream;
    .restart local v3    # "source":Ljava/io/FileInputStream;
    goto :goto_2

    .line 4363
    .end local v0    # "buffer":[B
    .end local v2    # "i":I
    :catch_4
    move-exception v1

    goto :goto_4

    .local v1, "e":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_4

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_7
    move-exception v1

    goto :goto_4

    .line 4356
    .end local v3    # "source":Ljava/io/FileInputStream;
    .restart local v4    # "source":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "source":Ljava/io/FileInputStream;
    .restart local v3    # "source":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v3    # "source":Ljava/io/FileInputStream;
    .end local v5    # "target":Ljava/io/FileOutputStream;
    .restart local v4    # "source":Ljava/io/FileInputStream;
    .restart local v6    # "target":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v8

    move-object v5, v6

    .end local v6    # "target":Ljava/io/FileOutputStream;
    .restart local v5    # "target":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "source":Ljava/io/FileInputStream;
    .restart local v3    # "source":Ljava/io/FileInputStream;
    goto :goto_5

    .line 4351
    .end local v3    # "source":Ljava/io/FileInputStream;
    .restart local v4    # "source":Ljava/io/FileInputStream;
    :catch_8
    move-exception v1

    move-object v3, v4

    .end local v4    # "source":Ljava/io/FileInputStream;
    .restart local v3    # "source":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v3    # "source":Ljava/io/FileInputStream;
    .end local v5    # "target":Ljava/io/FileOutputStream;
    .restart local v4    # "source":Ljava/io/FileInputStream;
    .restart local v6    # "target":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v1

    move-object v5, v6

    .end local v6    # "target":Ljava/io/FileOutputStream;
    .restart local v5    # "target":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "source":Ljava/io/FileInputStream;
    .restart local v3    # "source":Ljava/io/FileInputStream;
    goto :goto_3

    .line 4348
    :catch_a
    move-exception v1

    goto :goto_1

    .end local v3    # "source":Ljava/io/FileInputStream;
    .restart local v4    # "source":Ljava/io/FileInputStream;
    :catch_b
    move-exception v1

    move-object v3, v4

    .end local v4    # "source":Ljava/io/FileInputStream;
    .restart local v3    # "source":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private createToolTip()V
    .locals 2

    .prologue
    .line 2753
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    if-nez v0, :cond_0

    .line 2754
    new-instance v0, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;-><init>(Landroid/webkitsec/HtmlComposerView;Landroid/content/Context;Landroid/webkitsec/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    .line 2757
    :cond_0
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_1

    .line 2758
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;->show()V

    .line 2759
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    .line 2761
    :cond_1
    return-void
.end method

.method private displaySoftKeyboardForHtmlComposer()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 4372
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 4375
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 4377
    .local v1, "showIme":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 4378
    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 4380
    :cond_0
    return-void

    .end local v1    # "showIme":Z
    :cond_1
    move v1, v2

    .line 4375
    goto :goto_0
.end method

.method private drawImageResizeMoveHandlers(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Path;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "outLinePath"    # Landroid/graphics/Path;
    .param p3, "handlesPath"    # Landroid/graphics/Path;

    .prologue
    const/4 v11, 0x1

    const/high16 v9, 0x40000000    # 2.0f

    .line 6275
    iget-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->mIsInRotation:Z

    if-eqz v6, :cond_0

    .line 6317
    :goto_0
    return-void

    .line 6278
    :cond_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 6279
    .local v1, "paint":Landroid/graphics/Paint;
    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6280
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6281
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    mul-float/2addr v6, v9

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6283
    const/4 v6, 0x0

    const/16 v7, 0x8a

    const/16 v8, 0xff

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 6284
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 6286
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 6287
    .local v2, "re":Landroid/graphics/RectF;
    invoke-virtual {p2, v2, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 6290
    iget v6, v2, Landroid/graphics/RectF;->left:F

    iget v7, v2, Landroid/graphics/RectF;->right:F

    iget v8, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    float-to-int v4, v6

    .line 6291
    .local v4, "xcenter":I
    iget v6, v2, Landroid/graphics/RectF;->top:F

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    iget v8, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    float-to-int v5, v6

    .line 6292
    .local v5, "ycenter":I
    const/4 v0, 0x0

    .line 6293
    .local v0, "handle":Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x108040c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 6294
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    .line 6296
    iget v6, v2, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v6, v7

    iget v7, v2, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v7, v8

    iget v8, v2, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v8, v9

    iget v9, v2, Landroid/graphics/RectF;->top:F

    float-to-int v9, v9

    iget v10, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v9, v10

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6297
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6298
    iget v6, v2, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v6, v7

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v7, v8

    iget v8, v2, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v8, v9

    iget v9, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v9, v9

    iget v10, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v9, v10

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6299
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6300
    iget v6, v2, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v6, v7

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v7, v8

    iget v8, v2, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v8, v9

    iget v9, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v9, v9

    iget v10, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v9, v10

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6301
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6302
    iget v6, v2, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v6, v7

    iget v7, v2, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v7, v8

    iget v8, v2, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v8, v9

    iget v9, v2, Landroid/graphics/RectF;->top:F

    float-to-int v9, v9

    iget v10, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v9, v10

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6303
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6305
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int v6, v4, v6

    iget v7, v2, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v8, v4

    iget v9, v2, Landroid/graphics/RectF;->top:F

    float-to-int v9, v9

    iget v10, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v9, v10

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6306
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6307
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int v6, v4, v6

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v8, v4

    iget v9, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v9, v9

    iget v10, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v9, v10

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6308
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6309
    iget v6, v2, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int v7, v5, v7

    iget v8, v2, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v8, v9

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v9, v5

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6310
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6311
    iget v6, v2, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int v7, v5, v7

    iget v8, v2, Landroid/graphics/RectF;->right:F

    float-to-int v8, v8

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v8, v9

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v9, v5

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6312
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6314
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 6315
    .local v3, "reh":Landroid/graphics/RectF;
    invoke-virtual {p3, v3, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    goto/16 :goto_0
.end method

.method private drawWebImageSelectionControl(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 6253
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    if-eqz v0, :cond_0

    .line 6256
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iget-object v0, v0, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->outLinePath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iget-object v1, v1, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->handlesPath:Landroid/graphics/Path;

    invoke-direct {p0, p1, v0, v1}, Landroid/webkitsec/HtmlComposerView;->drawImageResizeMoveHandlers(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Path;)V

    .line 6257
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6264
    :goto_0
    return-void

    .line 6261
    :cond_0
    const-string v0, "HtmlComposerView"

    const-string v1, "DrawImageSelectionControls  mImageCopyInfo is null and invalidate()  "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6262
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method private getCurrentOutlineBottom()F
    .locals 1

    .prologue
    .line 5207
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    return v0
.end method

.method private getCurrentOutlineHeight()I
    .locals 2

    .prologue
    .line 5199
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private getCurrentOutlineRight()F
    .locals 1

    .prologue
    .line 5211
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    return v0
.end method

.method private getCurrentOutlineWidth()I
    .locals 2

    .prologue
    .line 5203
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private getDegreeOfRotatedImage(Landroid/net/Uri;)I
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 4442
    const/4 v8, 0x0

    .line 4444
    .local v8, "degree":I
    if-nez p1, :cond_0

    move v9, v8

    .line 4478
    .end local v8    # "degree":I
    .local v9, "degree":I
    :goto_0
    return v9

    .line 4446
    .end local v9    # "degree":I
    .restart local v8    # "degree":I
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 4448
    .local v6, "authority":Ljava/lang/String;
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v6, :cond_4

    const-string/jumbo v0, "media"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4449
    const/4 v7, 0x0

    .line 4452
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 4453
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4454
    const-string/jumbo v0, "orientation"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 4458
    :cond_1
    if-eqz v7, :cond_2

    .line 4459
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_2
    move v9, v8

    .line 4478
    .end local v8    # "degree":I
    .restart local v9    # "degree":I
    goto :goto_0

    .line 4458
    .end local v9    # "degree":I
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "degree":I
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 4459
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4458
    :cond_3
    throw v0

    .line 4462
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_4
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4464
    :try_start_1
    new-instance v11, Landroid/media/ExifInterface;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 4465
    .local v11, "exif":Landroid/media/ExifInterface;
    const-string v0, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {v11, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v12

    .line 4466
    .local v12, "exifOrientation":I
    const/4 v0, 0x6

    if-ne v12, v0, :cond_5

    .line 4467
    const/16 v8, 0x5a

    goto :goto_2

    .line 4468
    :cond_5
    const/4 v0, 0x3

    if-ne v12, v0, :cond_6

    .line 4469
    const/16 v8, 0xb4

    goto :goto_2

    .line 4470
    :cond_6
    const/16 v0, 0x8

    if-ne v12, v0, :cond_2

    .line 4471
    const/16 v8, 0x10e

    goto :goto_2

    .line 4473
    .end local v11    # "exif":Landroid/media/ExifInterface;
    .end local v12    # "exifOrientation":I
    :catch_0
    move-exception v10

    .line 4474
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 4456
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v0

    .line 4458
    if-eqz v7, :cond_2

    goto :goto_1
.end method

.method private getLoadableContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 4394
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4395
    .local v3, "bufer":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 4396
    .local v7, "fstream":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 4397
    .local v9, "in":Ljava/io/DataInputStream;
    const/4 v1, 0x0

    .line 4401
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4403
    .end local v7    # "fstream":Ljava/io/FileInputStream;
    .local v8, "fstream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v10, Ljava/io/DataInputStream;

    invoke-direct {v10, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4404
    .end local v9    # "in":Ljava/io/DataInputStream;
    .local v10, "in":Ljava/io/DataInputStream;
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-direct {v12, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4407
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .local v11, "strLine":Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 4409
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    .line 4421
    .end local v11    # "strLine":Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "in":Ljava/io/DataInputStream;
    .restart local v9    # "in":Ljava/io/DataInputStream;
    move-object v7, v8

    .line 4422
    .end local v8    # "fstream":Ljava/io/FileInputStream;
    .local v6, "ep":Ljava/lang/Exception;
    .restart local v7    # "fstream":Ljava/io/FileInputStream;
    :goto_1
    :try_start_4
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " HtmlComposerView "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4423
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4426
    if-eqz v7, :cond_0

    .line 4427
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 4428
    :cond_0
    if-eqz v9, :cond_1

    .line 4429
    invoke-virtual {v9}, Ljava/io/FilterInputStream;->close()V

    .line 4430
    :cond_1
    if-eqz v1, :cond_2

    .line 4431
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 4434
    .end local v6    # "ep":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-object v4

    .line 4411
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v7    # "fstream":Ljava/io/FileInputStream;
    .end local v9    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "fstream":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/DataInputStream;
    .restart local v11    # "strLine":Ljava/lang/String;
    :cond_3
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4413
    .local v4, "data":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/webkitsec/HtmlComposerView;->isInsertionAllowed(I)Z

    move-result v12

    if-nez v12, :cond_4

    .line 4415
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v15, 0x1040bf5

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v15, 0x1040bf6

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 4416
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 4426
    :cond_4
    if-eqz v8, :cond_5

    .line 4427
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 4428
    :cond_5
    if-eqz v10, :cond_6

    .line 4429
    invoke-virtual {v10}, Ljava/io/FilterInputStream;->close()V

    .line 4430
    :cond_6
    if-eqz v2, :cond_7

    .line 4431
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_7
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "in":Ljava/io/DataInputStream;
    .restart local v9    # "in":Ljava/io/DataInputStream;
    move-object v7, v8

    .line 4419
    .end local v8    # "fstream":Ljava/io/FileInputStream;
    .restart local v7    # "fstream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 4425
    .end local v4    # "data":Ljava/lang/String;
    .end local v11    # "strLine":Ljava/lang/String;
    :catchall_0
    move-exception v12

    .line 4426
    :goto_3
    if-eqz v7, :cond_8

    .line 4427
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 4428
    :cond_8
    if-eqz v9, :cond_9

    .line 4429
    invoke-virtual {v9}, Ljava/io/FilterInputStream;->close()V

    .line 4430
    :cond_9
    if-eqz v1, :cond_a

    .line 4431
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 4425
    :cond_a
    throw v12

    .line 4432
    :catch_1
    move-exception v5

    .line 4433
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4434
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    :goto_4
    goto :goto_2

    .line 4432
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v6    # "ep":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    .line 4433
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4434
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    goto :goto_4

    .line 4432
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "ep":Ljava/lang/Exception;
    .end local v7    # "fstream":Ljava/io/FileInputStream;
    .end local v9    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "data":Ljava/lang/String;
    .restart local v8    # "fstream":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/DataInputStream;
    .restart local v11    # "strLine":Ljava/lang/String;
    :catch_3
    move-exception v5

    .line 4433
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4434
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .end local v4    # "data":Ljava/lang/String;
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "in":Ljava/io/DataInputStream;
    .restart local v9    # "in":Ljava/io/DataInputStream;
    move-object v7, v8

    .end local v8    # "fstream":Ljava/io/FileInputStream;
    .restart local v7    # "fstream":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .line 4425
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "fstream":Ljava/io/FileInputStream;
    .end local v11    # "strLine":Ljava/lang/String;
    .restart local v8    # "fstream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v12

    move-object v7, v8

    .end local v8    # "fstream":Ljava/io/FileInputStream;
    .restart local v7    # "fstream":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v7    # "fstream":Ljava/io/FileInputStream;
    .end local v9    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "fstream":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/DataInputStream;
    :catchall_2
    move-exception v12

    move-object v9, v10

    .end local v10    # "in":Ljava/io/DataInputStream;
    .restart local v9    # "in":Ljava/io/DataInputStream;
    move-object v7, v8

    .end local v8    # "fstream":Ljava/io/FileInputStream;
    .restart local v7    # "fstream":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v7    # "fstream":Ljava/io/FileInputStream;
    .end local v9    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "fstream":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/DataInputStream;
    :catchall_3
    move-exception v12

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "in":Ljava/io/DataInputStream;
    .restart local v9    # "in":Ljava/io/DataInputStream;
    move-object v7, v8

    .end local v8    # "fstream":Ljava/io/FileInputStream;
    .restart local v7    # "fstream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 4421
    :catch_4
    move-exception v6

    goto/16 :goto_1

    .end local v7    # "fstream":Ljava/io/FileInputStream;
    .restart local v8    # "fstream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v6

    move-object v7, v8

    .end local v8    # "fstream":Ljava/io/FileInputStream;
    .restart local v7    # "fstream":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v7    # "fstream":Ljava/io/FileInputStream;
    .end local v9    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "fstream":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/DataInputStream;
    :catch_6
    move-exception v6

    move-object v9, v10

    .end local v10    # "in":Ljava/io/DataInputStream;
    .restart local v9    # "in":Ljava/io/DataInputStream;
    move-object v7, v8

    .end local v8    # "fstream":Ljava/io/FileInputStream;
    .restart local v7    # "fstream":Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method private getSelectedImageUri()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 4483
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4500
    :cond_0
    :goto_0
    return-object v2

    .line 4485
    :cond_1
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-direct {v1, p0, v2, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4486
    .local v1, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v1

    .line 4487
    :try_start_0
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 4488
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x229

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4493
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4498
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4500
    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 4490
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 4498
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 4494
    :catch_0
    move-exception v0

    .line 4495
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for overrideUrl"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4496
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private getSelectionOffsetImage()V
    .locals 2

    .prologue
    .line 4505
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4510
    :cond_0
    :goto_0
    return-void

    .line 4507
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4508
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x21d

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method private getSelectionOffsetImage(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 4516
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4526
    :cond_0
    :goto_0
    return-void

    .line 4518
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    new-instance v1, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;-><init>(Landroid/webkitsec/WebViewCore;)V

    iput-object v1, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    .line 4519
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    const/16 v1, 0x8

    iput v1, v0, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->mGranularity:I

    .line 4520
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iput-object p1, v0, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->imageRect:Landroid/graphics/Rect;

    .line 4521
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    .line 4523
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4524
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x21d

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method private getSelectionOffsetImage(Landroid/graphics/Rect;Landroid/graphics/Path;Landroid/graphics/Path;)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "imageoutLinePath"    # Landroid/graphics/Path;
    .param p3, "imagehandlesPath"    # Landroid/graphics/Path;

    .prologue
    .line 4532
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4545
    :cond_0
    :goto_0
    return-void

    .line 4534
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    new-instance v1, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;-><init>(Landroid/webkitsec/WebViewCore;)V

    iput-object v1, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    .line 4535
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    const/16 v1, 0x8

    iput v1, v0, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->mGranularity:I

    .line 4536
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iput-object p1, v0, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->imageRect:Landroid/graphics/Rect;

    .line 4537
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    .line 4539
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iput-object p2, v0, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->outLinePath:Landroid/graphics/Path;

    .line 4540
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iput-object p3, v0, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->handlesPath:Landroid/graphics/Path;

    .line 4542
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4543
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x21d

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method private getTargetView()Landroid/webkitsec/HtmlComposerView;
    .locals 1

    .prologue
    .line 4549
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    return-object v0
.end method

.method private handleBottomMiddleHandleDrag(II)V
    .locals 6
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v4, 0x41200000    # 10.0f

    .line 5653
    const/4 v0, 0x0

    .line 5654
    .local v0, "deltaX":I
    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    sub-int v1, p2, v2

    .line 5656
    .local v1, "deltaY":I
    if-gez v1, :cond_1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 5657
    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    if-gtz v2, :cond_0

    .line 5669
    :goto_0
    return-void

    .line 5658
    :cond_0
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 5659
    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    add-int p2, v2, v1

    .line 5662
    :cond_1
    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 5663
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateAllHandles()V

    .line 5664
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 5665
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 5666
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRegions()V

    .line 5668
    iput p2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    goto :goto_0
.end method

.method private handleLeftBottomHandleDrag(II)V
    .locals 11
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const/16 v10, 0xa

    const/high16 v9, 0x42c80000    # 100.0f

    const/high16 v8, 0x41200000    # 10.0f

    .line 5441
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    sub-int v2, p1, v6

    .line 5442
    .local v2, "deltaX":I
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    sub-int v3, p2, v6

    .line 5443
    .local v3, "deltaY":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 5444
    .local v0, "deltaValueX":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 5445
    .local v1, "deltaValueY":I
    const/4 v4, 0x1

    .line 5446
    .local v4, "signX":I
    const/4 v5, 0x1

    .line 5448
    .local v5, "signY":I
    if-lez v2, :cond_0

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mContentX:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 5449
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    float-to-int v2, v6

    .line 5450
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    add-int p1, v2, v6

    .line 5451
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 5453
    :cond_0
    if-gez v3, :cond_3

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_3

    .line 5454
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    if-gtz v6, :cond_2

    .line 5486
    :cond_1
    :goto_0
    return-void

    .line 5455
    :cond_2
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    add-float/2addr v6, v7

    float-to-int v3, v6

    .line 5456
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    add-int p2, v3, v6

    .line 5457
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 5460
    :cond_3
    if-lt v0, v10, :cond_1

    if-lt v1, v10, :cond_1

    .line 5462
    if-gez v2, :cond_4

    .line 5463
    const/4 v4, -0x1

    .line 5464
    :cond_4
    if-gez v3, :cond_5

    .line 5465
    const/4 v5, -0x1

    .line 5466
    :cond_5
    if-eq v4, v5, :cond_1

    .line 5469
    if-ge v0, v1, :cond_6

    .line 5470
    int-to-float v6, v0

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int v3, v6, v5

    .line 5477
    :goto_1
    invoke-direct {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 5478
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateAllHandles()V

    .line 5481
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 5482
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 5483
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRegions()V

    .line 5484
    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5485
    iput p2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    goto :goto_0

    .line 5473
    :cond_6
    int-to-float v6, v1

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int v2, v6, v4

    goto :goto_1
.end method

.method private handleLeftMiddleHandleDrag(II)V
    .locals 6
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v4, 0x41200000    # 10.0f

    .line 5707
    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    sub-int v0, p1, v2

    .line 5708
    .local v0, "deltaX":I
    const/4 v1, 0x0

    .line 5710
    .local v1, "deltaY":I
    if-lez v0, :cond_0

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mContentX:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 5711
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 5712
    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    add-int p1, v2, v0

    .line 5715
    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 5716
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateAllHandles()V

    .line 5717
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 5718
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 5719
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRegions()V

    .line 5720
    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5721
    return-void
.end method

.method private handleLeftTopHandleDrag(II)V
    .locals 11
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const/16 v10, 0xa

    const/high16 v9, 0x42c80000    # 100.0f

    const/high16 v8, 0x41200000    # 10.0f

    .line 5489
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    sub-int v2, p1, v6

    .line 5490
    .local v2, "deltaX":I
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    sub-int v3, p2, v6

    .line 5491
    .local v3, "deltaY":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 5492
    .local v0, "deltaValueX":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 5493
    .local v1, "deltaValueY":I
    const/4 v4, 0x1

    .line 5494
    .local v4, "signX":I
    const/4 v5, 0x1

    .line 5496
    .local v5, "signY":I
    if-lez v2, :cond_0

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mContentX:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 5497
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    float-to-int v2, v6

    .line 5498
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    add-int p1, v6, v2

    .line 5499
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 5501
    :cond_0
    if-lez v3, :cond_1

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_1

    .line 5502
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    float-to-int v3, v6

    .line 5503
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    add-int p2, v6, v3

    .line 5504
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 5507
    :cond_1
    if-lt v0, v10, :cond_2

    if-ge v1, v10, :cond_3

    .line 5533
    :cond_2
    :goto_0
    return-void

    .line 5509
    :cond_3
    if-gez v2, :cond_4

    .line 5510
    const/4 v4, -0x1

    .line 5511
    :cond_4
    if-gez v3, :cond_5

    .line 5512
    const/4 v5, -0x1

    .line 5513
    :cond_5
    if-ne v4, v5, :cond_2

    .line 5516
    if-ge v0, v1, :cond_6

    .line 5517
    int-to-float v6, v0

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int v3, v6, v5

    .line 5524
    :goto_1
    invoke-direct {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 5525
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateAllHandles()V

    .line 5528
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 5529
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 5530
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRegions()V

    .line 5531
    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5532
    iput p2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    goto :goto_0

    .line 5520
    :cond_6
    int-to-float v6, v1

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int v2, v6, v4

    goto :goto_1
.end method

.method private handleNavKeys(I)V
    .locals 7
    .param p1, "keyCode"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 4553
    packed-switch p1, :pswitch_data_0

    .line 4685
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(I)V

    .line 4687
    invoke-virtual {p0, v5}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 4689
    invoke-virtual {p0, v5}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 4690
    return-void

    .line 4555
    :pswitch_0
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v2, :cond_3

    .line 4556
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    .line 4557
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-eqz v2, :cond_1

    .line 4558
    const-string v2, "MoveWordLeftAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4562
    :goto_1
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v1

    .line 4563
    .local v1, "selectionType":I
    if-ne v6, v1, :cond_2

    .line 4564
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffset()Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    move-result-object v0

    .line 4565
    .local v0, "selctionOffset":Landroid/webkitsec/HtmlComposerView$SelectionOffset;
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->startOffset:I

    iput v3, v2, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    .line 4566
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->endOffset:I

    iput v3, v2, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    .line 4567
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 4568
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    .line 4569
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    goto :goto_0

    .line 4560
    .end local v0    # "selctionOffset":Landroid/webkitsec/HtmlComposerView$SelectionOffset;
    .end local v1    # "selectionType":I
    :cond_1
    const-string v2, "MoveLeftAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 4570
    .restart local v1    # "selectionType":I
    :cond_2
    if-nez v1, :cond_0

    .line 4571
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto :goto_0

    .line 4575
    .end local v1    # "selectionType":I
    :cond_3
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-eqz v2, :cond_4

    .line 4576
    const-string v2, "MoveWordLeft"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4581
    :goto_2
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto :goto_0

    .line 4578
    :cond_4
    const-string v2, "MoveLeft"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 4586
    :pswitch_1
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v2, :cond_7

    .line 4587
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    .line 4588
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-eqz v2, :cond_5

    .line 4589
    const-string v2, "MoveWordRightAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4593
    :goto_3
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v1

    .line 4594
    .restart local v1    # "selectionType":I
    if-ne v6, v1, :cond_6

    .line 4595
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffset()Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    move-result-object v0

    .line 4596
    .restart local v0    # "selctionOffset":Landroid/webkitsec/HtmlComposerView$SelectionOffset;
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->startOffset:I

    iput v3, v2, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    .line 4597
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->endOffset:I

    iput v3, v2, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    .line 4598
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 4599
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    .line 4600
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    goto/16 :goto_0

    .line 4591
    .end local v0    # "selctionOffset":Landroid/webkitsec/HtmlComposerView$SelectionOffset;
    .end local v1    # "selectionType":I
    :cond_5
    const-string v2, "MoveRightAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3

    .line 4601
    .restart local v1    # "selectionType":I
    :cond_6
    if-nez v1, :cond_0

    .line 4602
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto/16 :goto_0

    .line 4606
    .end local v1    # "selectionType":I
    :cond_7
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-eqz v2, :cond_8

    .line 4607
    const-string v2, "MoveWordRight"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4611
    :goto_4
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto/16 :goto_0

    .line 4609
    :cond_8
    const-string v2, "MoveRight"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_4

    .line 4616
    :pswitch_2
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v2, :cond_b

    .line 4617
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    .line 4618
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-eqz v2, :cond_9

    .line 4619
    const-string v2, "MoveToBeginningOfParagraphAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4620
    const-string v2, "MoveBackwardAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4621
    const-string v2, "MoveToBeginningOfParagraphAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4625
    :goto_5
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v1

    .line 4626
    .restart local v1    # "selectionType":I
    if-ne v6, v1, :cond_a

    .line 4627
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffset()Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    move-result-object v0

    .line 4628
    .restart local v0    # "selctionOffset":Landroid/webkitsec/HtmlComposerView$SelectionOffset;
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->startOffset:I

    iput v3, v2, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    .line 4629
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->endOffset:I

    iput v3, v2, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    .line 4630
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 4631
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    .line 4632
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    goto/16 :goto_0

    .line 4623
    .end local v0    # "selctionOffset":Landroid/webkitsec/HtmlComposerView$SelectionOffset;
    .end local v1    # "selectionType":I
    :cond_9
    const-string v2, "MoveUpAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_5

    .line 4633
    .restart local v1    # "selectionType":I
    :cond_a
    if-nez v1, :cond_0

    .line 4634
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto/16 :goto_0

    .line 4638
    .end local v1    # "selectionType":I
    :cond_b
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-eqz v2, :cond_c

    .line 4639
    const-string v2, "MoveToBeginningOfParagraph"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4640
    const-string v2, "MoveBackward"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4641
    const-string v2, "MoveToBeginningOfParagraph"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4646
    :goto_6
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto/16 :goto_0

    .line 4643
    :cond_c
    const-string v2, "MoveUp"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_6

    .line 4651
    :pswitch_3
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v2, :cond_f

    .line 4652
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    .line 4653
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-eqz v2, :cond_d

    .line 4654
    const-string v2, "MoveToEndOfParagraphAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4655
    const-string v2, "MoveForwardAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4659
    :goto_7
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v1

    .line 4660
    .restart local v1    # "selectionType":I
    if-ne v6, v1, :cond_e

    .line 4661
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffset()Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    move-result-object v0

    .line 4662
    .restart local v0    # "selctionOffset":Landroid/webkitsec/HtmlComposerView$SelectionOffset;
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->startOffset:I

    iput v3, v2, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    .line 4663
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v3, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->endOffset:I

    iput v3, v2, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    .line 4664
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 4665
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v4, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    .line 4666
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    goto/16 :goto_0

    .line 4657
    .end local v0    # "selctionOffset":Landroid/webkitsec/HtmlComposerView$SelectionOffset;
    .end local v1    # "selectionType":I
    :cond_d
    const-string v2, "MoveDownAndModifySelection"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_7

    .line 4667
    .restart local v1    # "selectionType":I
    :cond_e
    if-nez v1, :cond_0

    .line 4668
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto/16 :goto_0

    .line 4672
    .end local v1    # "selectionType":I
    :cond_f
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-eqz v2, :cond_10

    .line 4673
    const-string v2, "MoveToEndOfParagraph"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4674
    const-string v2, "MoveForward"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4678
    :goto_8
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto/16 :goto_0

    .line 4676
    :cond_10
    const-string v2, "MoveDown"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_8

    .line 4553
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleRightBottomHandleDrag(II)V
    .locals 13
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const/16 v12, 0xa

    const/high16 v11, 0x42c80000    # 100.0f

    const/high16 v10, 0x41200000    # 10.0f

    .line 5536
    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    sub-int v2, p1, v8

    .line 5537
    .local v2, "deltaX":I
    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    sub-int v3, p2, v8

    .line 5538
    .local v3, "deltaY":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 5539
    .local v0, "deltaValueX":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 5540
    .local v1, "deltaValueY":I
    const/4 v6, 0x1

    .line 5541
    .local v6, "signX":I
    const/4 v7, 0x1

    .line 5543
    .local v7, "signY":I
    if-gez v2, :cond_0

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v9, v10

    div-float/2addr v9, v11

    add-float/2addr v8, v9

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mContentX:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_0

    .line 5544
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v9, v10

    div-float/2addr v9, v11

    add-float/2addr v8, v9

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v9

    float-to-int v2, v8

    .line 5545
    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    add-int p1, v8, v2

    .line 5546
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 5548
    :cond_0
    if-gez v3, :cond_3

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v9, v10

    div-float/2addr v9, v11

    add-float/2addr v8, v9

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_3

    .line 5549
    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    if-gtz v8, :cond_2

    .line 5592
    :cond_1
    :goto_0
    return-void

    .line 5550
    :cond_2
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v9, v10

    div-float/2addr v9, v11

    add-float/2addr v8, v9

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v8, v9

    float-to-int v3, v8

    .line 5551
    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    add-int p2, v8, v3

    .line 5552
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 5554
    :cond_3
    if-lez v2, :cond_4

    if-lez v3, :cond_4

    .line 5555
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 5556
    .local v5, "localVisibleRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v5}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 5558
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 5559
    .local v4, "imageHandlerWidth":I
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    div-int/lit8 v9, v4, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    int-to-float v9, v2

    add-float/2addr v8, v9

    iget v9, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_4

    .line 5560
    iget v8, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    div-int/lit8 v10, v4, 0x2

    int-to-float v10, v10

    add-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v2, v8

    .line 5561
    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    add-int p1, v8, v2

    .line 5565
    .end local v4    # "imageHandlerWidth":I
    .end local v5    # "localVisibleRect":Landroid/graphics/Rect;
    :cond_4
    if-lt v0, v12, :cond_1

    if-lt v1, v12, :cond_1

    .line 5567
    if-gez v2, :cond_5

    .line 5568
    const/4 v6, -0x1

    .line 5569
    :cond_5
    if-gez v3, :cond_6

    .line 5570
    const/4 v7, -0x1

    .line 5571
    :cond_6
    if-ne v6, v7, :cond_1

    .line 5574
    if-ge v0, v1, :cond_7

    .line 5575
    int-to-float v8, v0

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    iget-object v10, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    iget-object v10, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    sub-float/2addr v9, v10

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    mul-int v3, v8, v7

    .line 5582
    :goto_1
    invoke-direct {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 5583
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateAllHandles()V

    .line 5587
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 5588
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 5589
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRegions()V

    .line 5590
    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5591
    iput p2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    goto/16 :goto_0

    .line 5578
    :cond_7
    int-to-float v8, v1

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    iget-object v10, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    iget-object v10, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v10

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    mul-int v2, v8, v6

    goto :goto_1
.end method

.method private handleRightMiddleHandleDrag(II)V
    .locals 6
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v4, 0x41200000    # 10.0f

    .line 5690
    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    sub-int v0, p1, v2

    .line 5691
    .local v0, "deltaX":I
    const/4 v1, 0x0

    .line 5693
    .local v1, "deltaY":I
    if-gez v0, :cond_0

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mContentX:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 5694
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 5695
    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    add-int p1, v2, v0

    .line 5698
    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 5699
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateAllHandles()V

    .line 5700
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 5701
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 5702
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRegions()V

    .line 5703
    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5704
    return-void
.end method

.method private handleRightTopHandleDrag(II)V
    .locals 13
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const/16 v12, 0xa

    const/high16 v11, 0x42c80000    # 100.0f

    const/high16 v10, 0x41200000    # 10.0f

    .line 5595
    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    sub-int v2, p1, v8

    .line 5596
    .local v2, "deltaX":I
    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    sub-int v3, p2, v8

    .line 5597
    .local v3, "deltaY":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 5598
    .local v0, "deltaValueX":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 5599
    .local v1, "deltaValueY":I
    const/4 v6, 0x1

    .line 5600
    .local v6, "signX":I
    const/4 v7, 0x1

    .line 5602
    .local v7, "signY":I
    if-gez v2, :cond_0

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v9, v10

    div-float/2addr v9, v11

    add-float/2addr v8, v9

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mContentX:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_0

    .line 5603
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v9, v10

    div-float/2addr v9, v11

    add-float/2addr v8, v9

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v9

    float-to-int v2, v8

    .line 5604
    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    add-int p1, v8, v2

    .line 5605
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 5607
    :cond_0
    if-lez v3, :cond_1

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v9, v10

    div-float/2addr v9, v11

    sub-float/2addr v8, v9

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_1

    .line 5608
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v9, v10

    div-float/2addr v9, v11

    sub-float/2addr v8, v9

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    sub-float/2addr v8, v9

    float-to-int v3, v8

    .line 5609
    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    add-int p2, v8, v3

    .line 5610
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 5612
    :cond_1
    if-lez v2, :cond_2

    if-gez v3, :cond_2

    .line 5613
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 5614
    .local v5, "localVisibleRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v5}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 5616
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 5617
    .local v4, "imageHandlerWidth":I
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    div-int/lit8 v9, v4, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    int-to-float v9, v2

    add-float/2addr v8, v9

    iget v9, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 5618
    iget v8, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    div-int/lit8 v10, v4, 0x2

    int-to-float v10, v10

    add-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v2, v8

    .line 5619
    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    add-int p1, v8, v2

    .line 5623
    .end local v4    # "imageHandlerWidth":I
    .end local v5    # "localVisibleRect":Landroid/graphics/Rect;
    :cond_2
    if-lt v0, v12, :cond_3

    if-ge v1, v12, :cond_4

    .line 5649
    :cond_3
    :goto_0
    return-void

    .line 5625
    :cond_4
    if-gez v2, :cond_5

    .line 5626
    const/4 v6, -0x1

    .line 5627
    :cond_5
    if-gez v3, :cond_6

    .line 5628
    const/4 v7, -0x1

    .line 5629
    :cond_6
    if-eq v6, v7, :cond_3

    .line 5632
    if-ge v0, v1, :cond_7

    .line 5633
    int-to-float v8, v0

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    iget-object v10, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    iget-object v10, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    sub-float/2addr v9, v10

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    mul-int v3, v8, v7

    .line 5640
    :goto_1
    invoke-direct {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 5641
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateAllHandles()V

    .line 5644
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 5645
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 5646
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRegions()V

    .line 5647
    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5648
    iput p2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    goto :goto_0

    .line 5636
    :cond_7
    int-to-float v8, v1

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    iget-object v10, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    iget-object v10, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v10

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    mul-int v2, v8, v6

    goto :goto_1
.end method

.method private handleTopMiddleHandleDrag(II)V
    .locals 6
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v4, 0x41200000    # 10.0f

    .line 5672
    const/4 v0, 0x0

    .line 5673
    .local v0, "deltaX":I
    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    sub-int v1, p2, v2

    .line 5675
    .local v1, "deltaY":I
    if-lez v1, :cond_0

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 5676
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 5677
    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    add-int p2, v2, v1

    .line 5680
    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 5681
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateAllHandles()V

    .line 5682
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 5683
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 5684
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRegions()V

    .line 5686
    iput p2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    .line 5687
    return-void
.end method

.method private handle_ACTION_CANCEL()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 5427
    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 5428
    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 5429
    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 5430
    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 5431
    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 5432
    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 5433
    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 5434
    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 5436
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    .line 5437
    iput v1, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    .line 5438
    return-void
.end method

.method private handle_ACTION_DOWN(IIII)V
    .locals 4
    .param p1, "contentX"    # I
    .param p2, "contentY"    # I
    .param p3, "positionX"    # I
    .param p4, "positionY"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x1

    .line 5216
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->isOutLineRect(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5218
    const-string v0, "HtmlComposerView"

    const-string v1, "inside \"If outline\""

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5223
    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->isleftTopImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5224
    iput p3, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5225
    iput p4, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    .line 5226
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 5227
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineLeft:F

    .line 5229
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineTop:F

    .line 5230
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineLeft:F

    .line 5231
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineTop:F

    .line 5233
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    .line 5234
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    .line 5236
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    .line 5329
    :goto_1
    return-void

    .line 5221
    :cond_0
    const-string v0, "HtmlComposerView"

    const-string v1, "inside \"else outline\""

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5237
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->isleftBottomImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5238
    iput p3, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5239
    iput p4, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    .line 5240
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 5241
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineLeft:F

    .line 5243
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineTop:F

    .line 5244
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineLeft:F

    .line 5245
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineTop:F

    .line 5247
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    .line 5248
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    .line 5250
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    goto :goto_1

    .line 5251
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->isRightTopImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5252
    iput p3, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5253
    iput p4, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    .line 5254
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 5255
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineLeft:F

    .line 5256
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineTop:F

    .line 5257
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineLeft:F

    .line 5258
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineTop:F

    .line 5260
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    .line 5261
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    .line 5263
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    goto :goto_1

    .line 5264
    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->isRightBottomImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5265
    iput p3, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5266
    iput p4, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    .line 5267
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 5269
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    .line 5270
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    .line 5272
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    goto/16 :goto_1

    .line 5273
    :cond_4
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->isleftMiddleImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5274
    iput p3, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5275
    iput p4, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    .line 5276
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 5277
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineLeft:F

    .line 5278
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineTop:F

    .line 5279
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineLeft:F

    .line 5280
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineTop:F

    .line 5282
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    .line 5283
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    .line 5285
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    goto/16 :goto_1

    .line 5286
    :cond_5
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->isBottomMiddleImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5287
    iput p3, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5288
    iput p4, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    .line 5289
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 5290
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineLeft:F

    .line 5292
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineTop:F

    .line 5293
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineLeft:F

    .line 5294
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineTop:F

    .line 5296
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    .line 5297
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    .line 5299
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    goto/16 :goto_1

    .line 5300
    :cond_6
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->isTopMiddleImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5301
    iput p3, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5302
    iput p4, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    .line 5303
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 5304
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineLeft:F

    .line 5305
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineTop:F

    .line 5306
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineLeft:F

    .line 5307
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineTop:F

    .line 5309
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    .line 5310
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    .line 5312
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    goto/16 :goto_1

    .line 5313
    :cond_7
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->isRightMiddleImageHandle(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5314
    iput p3, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5315
    iput p4, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    .line 5316
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 5317
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineLeft:F

    .line 5318
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineTop:F

    .line 5319
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineLeft:F

    .line 5320
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineTop:F

    .line 5322
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    .line 5323
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    .line 5325
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    goto/16 :goto_1

    .line 5327
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    goto/16 :goto_1
.end method

.method private handle_ACTION_MOVE(II)V
    .locals 3
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const/4 v2, 0x1

    .line 5332
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    if-ne v0, v2, :cond_5

    .line 5334
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->handleRightBottomHandleDrag(II)V

    .line 5379
    :cond_0
    :goto_0
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    if-eqz v0, :cond_2

    .line 5380
    :cond_1
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->resizingHandlerInActionMove:Z

    .line 5382
    :cond_2
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    if-eqz v0, :cond_4

    .line 5383
    :cond_3
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->resizingHandlerInActionMove:Z

    .line 5384
    :cond_4
    return-void

    .line 5336
    :cond_5
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    if-ne v0, v2, :cond_6

    .line 5338
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->handleLeftBottomHandleDrag(II)V

    .line 5339
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    .line 5340
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    goto :goto_0

    .line 5342
    :cond_6
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    if-ne v0, v2, :cond_7

    .line 5344
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->handleLeftTopHandleDrag(II)V

    .line 5345
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    .line 5346
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    goto :goto_0

    .line 5348
    :cond_7
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    if-ne v0, v2, :cond_8

    .line 5350
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->handleRightTopHandleDrag(II)V

    .line 5351
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    .line 5352
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    goto/16 :goto_0

    .line 5354
    :cond_8
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    if-ne v0, v2, :cond_9

    .line 5356
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->handleLeftMiddleHandleDrag(II)V

    .line 5357
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    .line 5358
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    goto/16 :goto_0

    .line 5360
    :cond_9
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    if-ne v0, v2, :cond_a

    .line 5362
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->handleTopMiddleHandleDrag(II)V

    .line 5363
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    .line 5364
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    goto/16 :goto_0

    .line 5366
    :cond_a
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    if-ne v0, v2, :cond_b

    .line 5368
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->handleRightMiddleHandleDrag(II)V

    .line 5369
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    .line 5370
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    goto/16 :goto_0

    .line 5372
    :cond_b
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    if-ne v0, v2, :cond_0

    .line 5374
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->handleBottomMiddleHandleDrag(II)V

    .line 5375
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    .line 5376
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    goto/16 :goto_0
.end method

.method private handle_ACTION_UP(II)V
    .locals 5
    .param p1, "rawX"    # I
    .param p2, "rawY"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 5387
    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->prevX:I

    .line 5388
    iput p2, p0, Landroid/webkitsec/HtmlComposerView;->prevY:I

    .line 5389
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 5391
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    if-ne v0, v1, :cond_2

    .line 5394
    :cond_0
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 5395
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 5396
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 5397
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 5398
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 5399
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 5400
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 5402
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_1

    .line 5403
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineLeft:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 5404
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineTop:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 5405
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineLeft:F

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 5406
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineTop:F

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 5409
    :cond_1
    invoke-direct {p0, v3, v3}, Landroid/webkitsec/HtmlComposerView;->updateOutlineRectangle(II)V

    .line 5410
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateAllHandles()V

    .line 5413
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 5414
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 5417
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRegions()V

    .line 5418
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineLeft:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineLeft:F

    .line 5419
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->firstOutlineTop:F

    iput v0, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineTop:F

    .line 5420
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    .line 5421
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    .line 5424
    :cond_2
    return-void
.end method

.method private hide()V
    .locals 2

    .prologue
    .line 2763
    const-string v0, "HtmlComposerView"

    const-string v1, "hide : Called."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2766
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;->hide()V

    .line 2767
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    .line 2769
    :cond_0
    return-void
.end method

.method private hideSoftKeyboardForHtmlComposer()V
    .locals 3

    .prologue
    .line 4693
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 4694
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4695
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 4697
    :cond_0
    return-void
.end method

.method private imageCopy(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 4700
    if-eqz p1, :cond_0

    .line 4701
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4702
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x204

    invoke-virtual {v0, v1, p1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4704
    :cond_0
    return-void
.end method

.method private insertImageContent(Ljava/lang/String;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 4707
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4708
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x220

    invoke-virtual {v0, v1, p1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4709
    :cond_0
    return-void
.end method

.method private insertImageWithResizing(Ljava/lang/String;)Z
    .locals 29
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 4712
    const/16 v19, 0x0

    .line 4713
    .local v19, "htmlFragment":Ljava/lang/String;
    const/16 v26, 0x0

    .line 4714
    .local v26, "result":Z
    const/4 v15, 0x0

    .line 4717
    .local v15, "degree":I
    new-instance v21, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 4719
    .local v21, "options":Landroid/graphics/BitmapFactory$Options;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "####################### htmlFragment :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4721
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 4723
    .local v5, "imageUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/webkitsec/HtmlComposerView;->getDegreeOfRotatedImage(Landroid/net/Uri;)I

    move-result v15

    .line 4725
    const/4 v13, 0x0

    .line 4726
    .local v13, "absoluteFilePath":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v7, "file"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4727
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 4753
    :cond_1
    :goto_0
    if-nez v13, :cond_7

    const/4 v4, 0x0

    .line 4901
    :goto_1
    return v4

    .line 4728
    :cond_2
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v7, "content"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4729
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "picasa"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "sns"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4730
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 4732
    .local v14, "c":Landroid/database/Cursor;
    if-nez v14, :cond_3

    .line 4733
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Query on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "return null."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4737
    :cond_3
    const/4 v4, 0x1

    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eq v4, v7, :cond_4

    .line 4738
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Query on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "return 0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4743
    :catchall_0
    move-exception v4

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v4

    .line 4741
    :cond_4
    :try_start_1
    const-string v4, "_data"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    .line 4743
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 4746
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insertImage file_scheme: conten, filePath : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4749
    .end local v14    # "c":Landroid/database/Cursor;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_6

    const-string v4, "HtmlComposerView"

    const-string v7, "Uri is not either file or content scheme"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4750
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 4755
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_8

    const-string v4, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "####################### absoluteFilePath :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4757
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/webkitsec/WebClipboard;->getCloneFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 4758
    .local v16, "dstFilePath":Ljava/lang/String;
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4760
    .local v20, "mFile":Ljava/io/File;
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4761
    .local v24, "originalFile":Ljava/io/File;
    const-wide/32 v7, 0x100000

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v4, v7, v9

    if-gtz v4, :cond_9

    .line 4763
    const/4 v4, 0x4

    move-object/from16 v0, v21

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4764
    const-string v4, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "####################### originalFile.length() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4767
    :cond_9
    const/4 v6, 0x0

    .line 4770
    .local v6, "src":Landroid/graphics/Bitmap;
    :try_start_2
    move-object/from16 v0, v21

    invoke-static {v13, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v6

    .line 4782
    if-nez v6, :cond_d

    :cond_a
    :goto_2
    move/from16 v4, v26

    goto/16 :goto_1

    .line 4771
    :catch_0
    move-exception v17

    .line 4772
    .local v17, "e":Ljava/lang/OutOfMemoryError;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    if-eqz v4, :cond_b

    .line 4773
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v4, v7, v8, v9}, Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;->onNotification(ILjava/lang/Exception;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4776
    :cond_b
    const/16 v20, 0x0

    .line 4777
    const/16 v24, 0x0

    .line 4778
    const/16 v21, 0x0

    .line 4782
    if-eqz v6, :cond_a

    move/from16 v4, v26

    .line 4780
    goto/16 :goto_1

    .line 4782
    .end local v17    # "e":Ljava/lang/OutOfMemoryError;
    :cond_c
    throw v4

    .line 4785
    :cond_d
    if-eqz v15, :cond_12

    .line 4786
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 4787
    .local v11, "m":Landroid/graphics/Matrix;
    int-to-float v4, v15

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    invoke-virtual {v11, v4, v7, v8}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 4789
    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_4
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v12, 0x1

    invoke-static/range {v6 .. v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v6

    .line 4801
    if-nez v6, :cond_11

    :cond_e
    :goto_3
    move/from16 v4, v26

    goto/16 :goto_1

    .line 4790
    :catch_1
    move-exception v17

    .line 4791
    .restart local v17    # "e":Ljava/lang/OutOfMemoryError;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    if-eqz v4, :cond_f

    .line 4792
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v4, v7, v8, v9}, Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;->onNotification(ILjava/lang/Exception;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 4795
    :cond_f
    const/16 v20, 0x0

    .line 4796
    const/16 v24, 0x0

    .line 4797
    const/16 v21, 0x0

    .line 4801
    if-eqz v6, :cond_e

    move/from16 v4, v26

    .line 4799
    goto/16 :goto_1

    .line 4801
    .end local v17    # "e":Ljava/lang/OutOfMemoryError;
    :cond_10
    throw v4

    .line 4804
    :cond_11
    if-eqz v15, :cond_12

    const/16 v4, 0xb4

    if-eq v15, v4, :cond_12

    .line 4805
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v27, v0

    .line 4806
    .local v27, "temp_value":I
    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object/from16 v0, v21

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 4807
    move/from16 v0, v27

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 4811
    .end local v11    # "m":Landroid/graphics/Matrix;
    .end local v27    # "temp_value":I
    :cond_12
    const-string v4, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "####################### htmlFragment : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v21

    iget v8, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v21

    iget v8, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4813
    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-nez v4, :cond_13

    move/from16 v4, v26

    .line 4814
    goto/16 :goto_1

    .line 4817
    :cond_13
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v23, v0

    .line 4818
    .local v23, "originWidth":I
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v22, v0

    .line 4819
    .local v22, "originHeight":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkitsec/HtmlComposerView;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkitsec/HtmlComposerView;->mScreenHeight:I

    if-gt v4, v7, :cond_17

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkitsec/HtmlComposerView;->mScreenWidth:I

    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v4, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int v28, v4, v7

    .line 4820
    .local v28, "width":I
    mul-int v4, v22, v28

    div-int v18, v4, v23

    .line 4822
    .local v18, "height":I
    const-wide/32 v7, 0x100000

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v4, v7, v9

    if-lez v4, :cond_14

    if-eqz v15, :cond_1a

    .line 4823
    :cond_14
    const-string v4, "HtmlComposerView"

    const-string v7, "####################### htmlFragment : Big Data"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4825
    if-eqz v6, :cond_16

    .line 4828
    :try_start_6
    new-instance v25, Ljava/io/FileOutputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 4830
    .local v25, "outStream":Ljava/io/FileOutputStream;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v7, ".jpg"

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_15

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v7, ".jpeg"

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_18

    .line 4832
    :cond_15
    const-string v4, "HtmlComposerView"

    const-string v7, "####################### htmlFragment : Bitmap.CompressFormat.JPEG"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4833
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    move-object/from16 v0, v25

    invoke-virtual {v6, v4, v7, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 4834
    invoke-virtual/range {v25 .. v25}, Ljava/io/OutputStream;->flush()V

    .line 4835
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 4873
    .end local v25    # "outStream":Ljava/io/FileOutputStream;
    :cond_16
    :goto_5
    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    .line 4874
    if-nez v19, :cond_1b

    move/from16 v4, v26

    goto/16 :goto_1

    .line 4819
    .end local v18    # "height":I
    .end local v28    # "width":I
    :cond_17
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkitsec/HtmlComposerView;->mScreenHeight:I

    goto :goto_4

    .line 4837
    .restart local v18    # "height":I
    .restart local v25    # "outStream":Ljava/io/FileOutputStream;
    .restart local v28    # "width":I
    :cond_18
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "png"

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_19

    .line 4839
    const-string v4, "HtmlComposerView"

    const-string v7, "####################### htmlFragment : Bitmap.CompressFormat.PNG"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4840
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    move-object/from16 v0, v25

    invoke-virtual {v6, v4, v7, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 4841
    invoke-virtual/range {v25 .. v25}, Ljava/io/OutputStream;->flush()V

    .line 4842
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_5

    .line 4854
    .end local v25    # "outStream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v17

    .line 4855
    .local v17, "e":Ljava/io/FileNotFoundException;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->printStackTrace()V

    move/from16 v4, v26

    .line 4856
    goto/16 :goto_1

    .line 4846
    .end local v17    # "e":Ljava/io/FileNotFoundException;
    .restart local v25    # "outStream":Ljava/io/FileOutputStream;
    :cond_19
    :try_start_8
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V

    .line 4847
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v1}, Landroid/webkitsec/HtmlComposerView;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eq v4, v7, :cond_16

    .line 4849
    const-string v4, "HtmlComposerView"

    const-string v7, "####################### onPaste : copyFile Fail !!!"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    move/from16 v4, v26

    .line 4850
    goto/16 :goto_1

    .line 4858
    .end local v25    # "outStream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v17

    .line 4859
    .local v17, "e":Ljava/io/IOException;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->printStackTrace()V

    move/from16 v4, v26

    .line 4860
    goto/16 :goto_1

    .line 4866
    .end local v17    # "e":Ljava/io/IOException;
    :cond_1a
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v1}, Landroid/webkitsec/HtmlComposerView;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eq v4, v7, :cond_16

    .line 4868
    const-string v4, "HtmlComposerView"

    const-string v7, "####################### onPaste : copyFile Fail !!!"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v4, v26

    .line 4869
    goto/16 :goto_1

    .line 4876
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_1c

    .line 4877
    const-string v4, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "####################### htmlFragment : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4880
    :cond_1c
    if-eqz v28, :cond_1f

    .line 4882
    move/from16 v0, v28

    move/from16 v1, v23

    if-le v0, v1, :cond_1d

    .line 4884
    move/from16 v28, v23

    .line 4885
    move/from16 v18, v22

    .line 4888
    :cond_1d
    const-wide/16 v7, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v4, v9

    float-to-double v9, v4

    cmpg-double v4, v7, v9

    if-gez v4, :cond_1e

    .line 4889
    mul-int/lit8 v4, v28, 0x64

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    div-float/2addr v4, v7

    float-to-int v0, v4

    move/from16 v28, v0

    .line 4890
    mul-int/lit8 v4, v18, 0x64

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    div-float/2addr v4, v7

    float-to-int v0, v4

    move/from16 v18, v0

    .line 4893
    :cond_1e
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v28

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkitsec/HtmlComposerView;->insertImage(Ljava/lang/String;II)Z

    move-result v26

    :goto_6
    move/from16 v4, v26

    .line 4901
    goto/16 :goto_1

    .line 4897
    :cond_1f
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView;->insertImage(Ljava/lang/String;)Z

    move-result v26

    goto :goto_6

    .line 4782
    .end local v18    # "height":I
    .end local v22    # "originHeight":I
    .end local v23    # "originWidth":I
    .end local v28    # "width":I
    :catchall_1
    move-exception v4

    if-nez v6, :cond_c

    goto/16 :goto_2

    .line 4801
    .restart local v11    # "m":Landroid/graphics/Matrix;
    :catchall_2
    move-exception v4

    if-nez v6, :cond_10

    goto/16 :goto_3
.end method

.method private isBottomMiddleImageHandle(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 5893
    move v0, p1

    .line 5894
    .local v0, "positionX":I
    move v1, p2

    .line 5896
    .local v1, "positionY":I
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5898
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5900
    .local v2, "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 5901
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle Bottom Middle PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5904
    :cond_0
    const/4 v3, 0x1

    .line 5913
    :goto_0
    return v3

    .line 5907
    .end local v2    # "temp":Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5909
    .restart local v2    # "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 5910
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle Bottom Middle PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5913
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isCursorAtBoundary(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 4905
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v2, -0x1

    .line 4922
    :goto_0
    return v2

    .line 4907
    :cond_1
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v3, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4908
    .local v1, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 4909
    :try_start_0
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 4910
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x22c

    invoke-virtual {v2, v3, p1, p2, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(IIILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4915
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4920
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4922
    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 4912
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 4920
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 4916
    :catch_0
    move-exception v0

    .line 4917
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4918
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private isHoverPointWithinIconAreaForResizing(II)Z
    .locals 12
    .param p1, "contentX"    # I
    .param p2, "contentY"    # I

    .prologue
    const v11, 0x1080702

    const v10, 0x1080701

    const v9, 0x1080700

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v4, 0x1

    .line 4934
    iget-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-ne v4, v5, :cond_11

    .line 4935
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 4936
    .local v1, "re":Landroid/graphics/RectF;
    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    invoke-virtual {v5, v1, v4}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 4938
    iget-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "HtmlComposerView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isHoverPointWithinIconAreaForResizing getX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", getY = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4939
    :cond_0
    iget-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "HtmlComposerView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isHoverPointWithinIconAreaForResizing outLinePath re.left re.top re.right re.bottom "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4941
    :cond_1
    const/16 v0, 0x28

    .line 4942
    .local v0, "delta":I
    iget v5, v1, Landroid/graphics/RectF;->left:F

    iget v6, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v6

    div-float/2addr v5, v8

    float-to-int v2, v5

    .line 4943
    .local v2, "xCenter":I
    iget v5, v1, Landroid/graphics/RectF;->top:F

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v6

    div-float/2addr v5, v8

    float-to-int v3, v5

    .line 4945
    .local v3, "yCenter":I
    iget v5, v1, Landroid/graphics/RectF;->left:F

    int-to-float v6, v0

    sub-float/2addr v5, v6

    int-to-float v6, p1

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_3

    iget v5, v1, Landroid/graphics/RectF;->left:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    int-to-float v6, p1

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_3

    iget v5, v1, Landroid/graphics/RectF;->top:F

    int-to-float v6, v0

    sub-float/2addr v5, v6

    int-to-float v6, p2

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_3

    iget v5, v1, Landroid/graphics/RectF;->top:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    int-to-float v6, p2

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_3

    .line 4947
    iget-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Left-Top"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4948
    :cond_2
    iput v11, p0, Landroid/webkitsec/HtmlComposerView;->mPrevRHIResource:I

    .line 4988
    .end local v0    # "delta":I
    .end local v1    # "re":Landroid/graphics/RectF;
    .end local v2    # "xCenter":I
    .end local v3    # "yCenter":I
    :goto_0
    return v4

    .line 4950
    .restart local v0    # "delta":I
    .restart local v1    # "re":Landroid/graphics/RectF;
    .restart local v2    # "xCenter":I
    .restart local v3    # "yCenter":I
    :cond_3
    iget v5, v1, Landroid/graphics/RectF;->right:F

    int-to-float v6, v0

    sub-float/2addr v5, v6

    int-to-float v6, p1

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_5

    iget v5, v1, Landroid/graphics/RectF;->right:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    int-to-float v6, p1

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_5

    iget v5, v1, Landroid/graphics/RectF;->top:F

    int-to-float v6, v0

    sub-float/2addr v5, v6

    int-to-float v6, p2

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_5

    iget v5, v1, Landroid/graphics/RectF;->top:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    int-to-float v6, p2

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_5

    .line 4952
    iget-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Right-Top"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4953
    :cond_4
    iput v10, p0, Landroid/webkitsec/HtmlComposerView;->mPrevRHIResource:I

    goto :goto_0

    .line 4955
    :cond_5
    iget v5, v1, Landroid/graphics/RectF;->left:F

    int-to-float v6, v0

    sub-float/2addr v5, v6

    int-to-float v6, p1

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_7

    iget v5, v1, Landroid/graphics/RectF;->left:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    int-to-float v6, p1

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_7

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v0

    sub-float/2addr v5, v6

    int-to-float v6, p2

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_7

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    int-to-float v6, p2

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_7

    .line 4957
    iget-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string v5, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Left-Bottom"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4958
    :cond_6
    iput v10, p0, Landroid/webkitsec/HtmlComposerView;->mPrevRHIResource:I

    goto :goto_0

    .line 4960
    :cond_7
    iget v5, v1, Landroid/graphics/RectF;->right:F

    int-to-float v6, v0

    sub-float/2addr v5, v6

    int-to-float v6, p1

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_9

    iget v5, v1, Landroid/graphics/RectF;->right:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    int-to-float v6, p1

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_9

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v0

    sub-float/2addr v5, v6

    int-to-float v6, p2

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_9

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    int-to-float v6, p2

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_9

    .line 4962
    iget-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v5, :cond_8

    const-string v5, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Right-Bottom"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4963
    :cond_8
    iput v11, p0, Landroid/webkitsec/HtmlComposerView;->mPrevRHIResource:I

    goto/16 :goto_0

    .line 4965
    :cond_9
    sub-int v5, v2, v0

    if-gt v5, p1, :cond_b

    add-int v5, v2, v0

    if-lt v5, p1, :cond_b

    iget v5, v1, Landroid/graphics/RectF;->top:F

    int-to-float v6, v0

    sub-float/2addr v5, v6

    int-to-float v6, p2

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_b

    iget v5, v1, Landroid/graphics/RectF;->top:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    int-to-float v6, p2

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_b

    .line 4967
    iget-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v5, :cond_a

    const-string v5, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Top-Horizontal Center"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4968
    :cond_a
    iput v9, p0, Landroid/webkitsec/HtmlComposerView;->mPrevRHIResource:I

    goto/16 :goto_0

    .line 4970
    :cond_b
    sub-int v5, v2, v0

    if-gt v5, p1, :cond_d

    add-int v5, v2, v0

    if-lt v5, p1, :cond_d

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v0

    sub-float/2addr v5, v6

    int-to-float v6, p2

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_d

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    int-to-float v6, p2

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_d

    .line 4972
    iget-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v5, :cond_c

    const-string v5, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Bottom-Horizontal Center"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4973
    :cond_c
    iput v9, p0, Landroid/webkitsec/HtmlComposerView;->mPrevRHIResource:I

    goto/16 :goto_0

    .line 4975
    :cond_d
    iget v5, v1, Landroid/graphics/RectF;->left:F

    int-to-float v6, v0

    sub-float/2addr v5, v6

    int-to-float v6, p1

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_f

    iget v5, v1, Landroid/graphics/RectF;->left:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    int-to-float v6, p1

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_f

    sub-int v5, v3, v0

    if-gt v5, p2, :cond_f

    add-int v5, v3, v0

    if-lt v5, p2, :cond_f

    .line 4977
    iget-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v5, :cond_e

    const-string v5, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Left-Vertical Center"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4978
    :cond_e
    const v5, 0x1080703

    iput v5, p0, Landroid/webkitsec/HtmlComposerView;->mPrevRHIResource:I

    goto/16 :goto_0

    .line 4980
    :cond_f
    iget v5, v1, Landroid/graphics/RectF;->right:F

    int-to-float v6, v0

    sub-float/2addr v5, v6

    int-to-float v6, p1

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_11

    iget v5, v1, Landroid/graphics/RectF;->right:F

    int-to-float v6, v0

    add-float/2addr v5, v6

    int-to-float v6, p1

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_11

    sub-int v5, v3, v0

    if-gt v5, p2, :cond_11

    add-int v5, v3, v0

    if-lt v5, p2, :cond_11

    .line 4982
    iget-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v5, :cond_10

    const-string v5, "HtmlComposerView"

    const-string v6, "isHoverPointWithinIconAreaForResizing Right-Vertical Center"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4983
    :cond_10
    const v5, 0x1080703

    iput v5, p0, Landroid/webkitsec/HtmlComposerView;->mPrevRHIResource:I

    goto/16 :goto_0

    .line 4988
    .end local v0    # "delta":I
    .end local v1    # "re":Landroid/graphics/RectF;
    .end local v2    # "xCenter":I
    .end local v3    # "yCenter":I
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method private isInsertionAllowed(I)Z
    .locals 6
    .param p1, "insertionLength"    # I

    .prologue
    const/4 v3, 0x1

    .line 4993
    iget-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->ignoreMaxLength:Z

    if-eqz v4, :cond_1

    .line 5005
    :cond_0
    :goto_0
    return v3

    .line 4995
    :cond_1
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->htmlLength()I

    move-result v0

    .line 4998
    .local v0, "curHtmlLength":I
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 4999
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectedText()Ljava/lang/String;

    move-result-object v1

    .line 5000
    .local v1, "selectedText":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 5001
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 5002
    .local v2, "selectedTextLength":I
    sub-int/2addr v0, v2

    .line 5005
    .end local v1    # "selectedText":Ljava/lang/String;
    .end local v2    # "selectedTextLength":I
    :cond_2
    add-int v4, v0, p1

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->mMaxHtmlLength:I

    if-le v4, v5, :cond_0

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isOutLineRect(II)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 5917
    move v0, p1

    .line 5918
    .local v0, "positionX":I
    move v1, p2

    .line 5920
    .local v1, "positionY":I
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5922
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 5923
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in \"If\" for Outline rectHandle left Top PositionX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " positionY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  imageRegion Bounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5926
    :cond_0
    const/4 v2, 0x1

    .line 5934
    :goto_0
    return v2

    .line 5929
    :cond_1
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 5930
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in \"else\" for Outline rectHandle left Top PositionX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " positionY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  imageRegion Bounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5934
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isRightBottomImageHandle(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 5798
    move v0, p1

    .line 5799
    .local v0, "positionX":I
    move v1, p2

    .line 5801
    .local v1, "positionY":I
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5803
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5805
    .local v2, "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 5806
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle Right Bottom PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5809
    :cond_0
    const/4 v3, 0x1

    .line 5818
    :goto_0
    return v3

    .line 5812
    .end local v2    # "temp":Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5814
    .restart local v2    # "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 5815
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle Right Bottom PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5818
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isRightMiddleImageHandle(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 5846
    move v0, p1

    .line 5847
    .local v0, "positionX":I
    move v1, p2

    .line 5849
    .local v1, "positionY":I
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5850
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5852
    .local v2, "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 5853
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle Right Middle PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5856
    :cond_0
    const/4 v3, 0x1

    .line 5865
    :goto_0
    return v3

    .line 5859
    .end local v2    # "temp":Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5861
    .restart local v2    # "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 5862
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle Right Middle PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5865
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isRightTopImageHandle(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 5774
    move v0, p1

    .line 5775
    .local v0, "positionX":I
    move v1, p2

    .line 5777
    .local v1, "positionY":I
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5779
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5781
    .local v2, "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 5782
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle Right Top PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5785
    :cond_0
    const/4 v3, 0x1

    .line 5794
    :goto_0
    return v3

    .line 5788
    .end local v2    # "temp":Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5790
    .restart local v2    # "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 5791
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle Right Top PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5794
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isTopMiddleImageHandle(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 5869
    move v0, p1

    .line 5870
    .local v0, "positionX":I
    move v1, p2

    .line 5872
    .local v1, "positionY":I
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5874
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5876
    .local v2, "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 5877
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle Top Middle PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5880
    :cond_0
    const/4 v3, 0x1

    .line 5889
    :goto_0
    return v3

    .line 5883
    .end local v2    # "temp":Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5885
    .restart local v2    # "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 5886
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle Top Middle PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5889
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isleftBottomImageHandle(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 5751
    move v0, p1

    .line 5752
    .local v0, "positionX":I
    move v1, p2

    .line 5754
    .local v1, "positionY":I
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5755
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5757
    .local v2, "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 5758
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle left Bottom PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5761
    :cond_0
    const/4 v3, 0x1

    .line 5770
    :goto_0
    return v3

    .line 5764
    .end local v2    # "temp":Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5766
    .restart local v2    # "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 5767
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside  rectHandle left Bottom PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5770
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isleftMiddleImageHandle(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 5822
    move v0, p1

    .line 5823
    .local v0, "positionX":I
    move v1, p2

    .line 5825
    .local v1, "positionY":I
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5827
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5829
    .local v2, "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 5830
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle Left Middle PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5833
    :cond_0
    const/4 v3, 0x1

    .line 5842
    :goto_0
    return v3

    .line 5836
    .end local v2    # "temp":Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5838
    .restart local v2    # "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 5839
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle Left Middle PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5842
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isleftTopImageHandle(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 5727
    move v0, p1

    .line 5728
    .local v0, "positionX":I
    move v1, p2

    .line 5730
    .local v1, "positionY":I
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5732
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5734
    .local v2, "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 5735
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "true inside rectHandle left Top  PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5738
    :cond_0
    const/4 v3, 0x1

    .line 5747
    :goto_0
    return v3

    .line 5741
    .end local v2    # "temp":Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5743
    .restart local v2    # "temp":Landroid/graphics/Rect;
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 5744
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "false inside rectHandle left Top PositionX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " positionY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  handleRegion left="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bottom ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5747
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private onAlignSelectedImageOutlineRectUpdate()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 5189
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-eqz v1, :cond_0

    .line 5191
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectedImageRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 5192
    .local v0, "selectedImageRect":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v2, :cond_0

    .line 5193
    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->updateOutlineDrawRect(Landroid/graphics/Rect;)V

    .line 5195
    .end local v0    # "selectedImageRect":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method private resetAndCreateOutlinePath()V
    .locals 6

    .prologue
    .line 5940
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 5941
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 5942
    return-void
.end method

.method private resetAndRecreateHandlesPath()V
    .locals 6

    .prologue
    .line 5945
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 5946
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 5947
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 5949
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 5950
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 5952
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 5953
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 5955
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 5956
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 5958
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 5959
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 5961
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 5962
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 5964
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 5965
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 5967
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 5968
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 5969
    return-void
.end method

.method private restartIMEByHtmlComposerView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 5009
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 5011
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x1

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 5012
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v3, v1, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 5013
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v3, v1, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    .line 5014
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 5016
    :cond_0
    return-void
.end method

.method private selectedImageOutlineRectUpdate()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 5180
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/webkitsec/HtmlComposerView;->imageSelectedX:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Landroid/webkitsec/HtmlComposerView;->imageSelectedY:I

    if-eq v1, v3, :cond_0

    .line 5182
    iget v1, p0, Landroid/webkitsec/HtmlComposerView;->imageSelectedX:I

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->imageSelectedY:I

    invoke-virtual {p0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v0

    .line 5183
    .local v0, "selectedImageRect":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-eq v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-eq v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-eq v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v3, :cond_0

    .line 5184
    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->updateOutlineDrawRect(Landroid/graphics/Rect;)V

    .line 5186
    .end local v0    # "selectedImageRect":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method private sendEventToUpdateToolbar()V
    .locals 2

    .prologue
    .line 5043
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 5044
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x501

    iput v1, v0, Landroid/os/Message;->what:I

    .line 5045
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5046
    return-void
.end method

.method private setEditable(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/16 v2, 0x207

    .line 5032
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5040
    :cond_0
    :goto_0
    return-void

    .line 5034
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5036
    if-eqz p1, :cond_2

    .line 5037
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(II)V

    goto :goto_0

    .line 5039
    :cond_2
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(II)V

    goto :goto_0
.end method

.method private updateAllHandles()V
    .locals 0

    .prologue
    .line 5974
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateLeftTopHandle()V

    .line 5975
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRightTopHandle()V

    .line 5976
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateLeftBottomHandle()V

    .line 5977
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRightBottomHandle()V

    .line 5978
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateTopMiddleHandle()V

    .line 5979
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateLeftMiddleHandle()V

    .line 5980
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateBottomMiddleHandle()V

    .line 5981
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRightMiddleHandle()V

    .line 5982
    return-void
.end method

.method private updateBottomMiddleHandle()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 6097
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6098
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    div-float/2addr v1, v5

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 6099
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 6100
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    div-float/2addr v1, v5

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 6101
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 6106
    :goto_0
    return-void

    .line 6104
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    div-float/2addr v1, v5

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    div-float/2addr v3, v5

    float-to-int v3, v3

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private updateInputMethodExtractText()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 5066
    new-instance v1, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 5067
    .local v1, "outText":Landroid/view/inputmethod/ExtractedText;
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 5069
    iget-object v3, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    .line 5084
    :cond_0
    :goto_0
    return-void

    .line 5072
    :cond_1
    const/4 v3, -0x1

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 5073
    iput v5, v1, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 5074
    iput v5, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 5075
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffset()Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    move-result-object v2

    .line 5076
    .local v2, "selctionOffset":Landroid/webkitsec/HtmlComposerView$SelectionOffset;
    iget v3, v2, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->startOffset:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 5077
    iget v3, v2, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->endOffset:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 5079
    const-string v3, "HtmlComposerView"

    const-string v4, "getExtractedText "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5081
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 5082
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5083
    invoke-virtual {v0, p0, v5, v1}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    goto :goto_0
.end method

.method private updateLeftBottomHandle()V
    .locals 6

    .prologue
    .line 6025
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6027
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 6028
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 6029
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 6030
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 6035
    :goto_0
    return-void

    .line 6033
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private updateLeftMiddleHandle()V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 6093
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v3

    div-float/2addr v2, v6

    float-to-int v2, v2

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    float-to-int v4, v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 6094
    return-void
.end method

.method private updateLeftTopHandle()V
    .locals 6

    .prologue
    .line 6020
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 6021
    return-void
.end method

.method private updateOutlineRectangle(II)V
    .locals 4
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const/4 v3, 0x1

    .line 6038
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    if-ne v0, v3, :cond_0

    .line 6039
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 6040
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 6042
    :cond_0
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    if-ne v0, v3, :cond_1

    .line 6043
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 6044
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 6046
    :cond_1
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    if-ne v0, v3, :cond_2

    .line 6047
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 6048
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 6050
    :cond_2
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    if-ne v0, v3, :cond_3

    .line 6051
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 6052
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 6054
    :cond_3
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    if-ne v0, v3, :cond_4

    .line 6055
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 6056
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 6058
    :cond_4
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    if-ne v0, v3, :cond_5

    .line 6059
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 6060
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 6062
    :cond_5
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    if-ne v0, v3, :cond_6

    .line 6063
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 6064
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 6066
    :cond_6
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    if-ne v0, v3, :cond_7

    .line 6067
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 6068
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 6070
    :cond_7
    return-void
.end method

.method private updateRegions()V
    .locals 10

    .prologue
    const/16 v5, 0x1e

    const/4 v7, 0x0

    .line 5986
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v3, v4

    .line 5987
    .local v3, "localImagWidth":I
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v2, v4

    .line 5989
    .local v2, "localImagHeight":I
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int v1, v4, v6

    .line 5990
    .local v1, "cropHandlerWidth":I
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v0, v4, v6

    .line 5992
    .local v0, "cropHandlerHeight":I
    add-int/lit8 v4, v1, 0x78

    if-le v3, v4, :cond_2

    move v4, v5

    :goto_0
    iput v4, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    .line 5993
    add-int/lit8 v4, v0, 0x78

    if-le v2, v4, :cond_3

    :goto_1
    iput v5, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    .line 5995
    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    if-gez v4, :cond_0

    iput v7, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    .line 5996
    :cond_0
    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    if-gez v4, :cond_1

    iput v7, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    .line 5998
    :cond_1
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    add-int/lit8 v8, v8, 0x14

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 5999
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 6002
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 6004
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 6006
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 6008
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 6010
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 6012
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 6014
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Region;->set(IIII)Z

    .line 6015
    return-void

    .line 5992
    :cond_2
    sub-int v4, v3, v1

    div-int/lit8 v4, v4, 0x4

    goto/16 :goto_0

    .line 5993
    :cond_3
    sub-int v4, v2, v0

    div-int/lit8 v5, v4, 0x4

    goto/16 :goto_1
.end method

.method private updateRightBottomHandle()V
    .locals 6

    .prologue
    .line 6073
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6074
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 6075
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 6076
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 6077
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 6082
    :goto_0
    return-void

    .line 6080
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private updateRightMiddleHandle()V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 6109
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v3

    div-float/2addr v2, v6

    float-to-int v2, v2

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    float-to-int v4, v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 6110
    return-void
.end method

.method private updateRightTopHandle()V
    .locals 6

    .prologue
    .line 6085
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 6086
    return-void
.end method

.method private updateTopMiddleHandle()V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 6113
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6114
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    div-float/2addr v1, v5

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 6115
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 6116
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    div-float/2addr v1, v5

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 6117
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 6122
    :goto_0
    return-void

    .line 6120
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    div-float/2addr v1, v5

    float-to-int v1, v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    div-float/2addr v3, v5

    float-to-int v3, v3

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private updateactionbar()V
    .locals 2

    .prologue
    .line 5059
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5063
    :cond_0
    :goto_0
    return-void

    .line 5061
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5062
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x21f

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method


# virtual methods
.method public DoClearImageSelection()V
    .locals 2

    .prologue
    .line 3139
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-eqz v0, :cond_0

    .line 3141
    const-string v0, "HtmlComposerView"

    const-string v1, "HtmlComposerView  --- Calling cleaselection "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3142
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    .line 3144
    :cond_0
    return-void
.end method

.method public GetLongPressForActioinPopup()Z
    .locals 1

    .prologue
    .line 6203
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForActionPopup:Z

    return v0
.end method

.method public HtmlComposerDrawContent(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x1

    .line 6231
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeMoved:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iget-object v1, v1, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->outLinePath:Landroid/graphics/Path;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iget-object v1, v1, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->handlesPath:Landroid/graphics/Path;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    if-nez v1, :cond_0

    .line 6233
    invoke-virtual {p0, v2}, Landroid/webkitsec/HtmlComposerView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v7

    .line 6234
    .local v7, "normalCursorRect":Landroid/graphics/Rect;
    if-eqz v7, :cond_0

    .line 6235
    new-instance v6, Landroid/graphics/Rect;

    iget v1, v7, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, -0xf

    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    iget v3, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, 0xf

    iget v4, v7, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, 0xf

    invoke-direct {v6, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 6236
    .local v6, "imageCursorRect":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 6237
    .local v0, "cursorPath":Landroid/graphics/Path;
    iget v1, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, v6, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 6238
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 6239
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 6240
    .local v8, "paint":Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6241
    invoke-virtual {p1, v0, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 6246
    .end local v0    # "cursorPath":Landroid/graphics/Path;
    .end local v6    # "imageCursorRect":Landroid/graphics/Rect;
    .end local v7    # "normalCursorRect":Landroid/graphics/Rect;
    .end local v8    # "paint":Landroid/graphics/Paint;
    :cond_0
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iget v1, v1, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->mGranularity:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 6247
    const-string v1, "HtmlComposerView"

    const-string v2, "drawWebImageSelectionControl is being called "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6248
    invoke-direct {p0, p1}, Landroid/webkitsec/HtmlComposerView;->drawWebImageSelectionControl(Landroid/graphics/Canvas;)V

    .line 6250
    :cond_1
    return-void
.end method

.method public IsWordMisspelledAtPosition(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 3184
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/WebViewClassic;->IsWordMisspelledAtPosition(II)Z

    move-result v0

    return v0
.end method

.method public MoveCursorRight()V
    .locals 2

    .prologue
    .line 3822
    const-string v0, "MoveRight"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3823
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 3824
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 3825
    return-void
.end method

.method public SendInitComposing()V
    .locals 2

    .prologue
    .line 4214
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4215
    .local v0, "imeBroadCast":Landroid/content/Intent;
    const-string v1, "imeAction:initComposing"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4216
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4217
    return-void
.end method

.method public SetContextMenuVisible(Z)V
    .locals 0
    .param p1, "_visible"    # Z

    .prologue
    .line 4142
    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    .line 4143
    return-void
.end method

.method public SetLongPressForActioinPopup(Z)V
    .locals 0
    .param p1, "_set"    # Z

    .prologue
    .line 6207
    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForActionPopup:Z

    .line 6208
    return-void
.end method

.method public UpdateRichTextToolbar(Z)V
    .locals 2
    .param p1, "isClear"    # Z

    .prologue
    const/4 v1, 0x1

    .line 4302
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

    if-eqz v0, :cond_1

    .line 4303
    if-eq p1, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-ne v0, v1, :cond_2

    .line 4304
    :cond_0
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;->onChanged(I)V

    .line 4311
    :cond_1
    :goto_0
    return-void

    .line 4305
    :cond_2
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z

    if-ne v0, v1, :cond_3

    .line 4306
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

    invoke-interface {v0, v1}, Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;->onChanged(I)V

    goto :goto_0

    .line 4308
    :cond_3
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;->onChanged(I)V

    goto :goto_0
.end method

.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 0
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 6134
    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    .line 6135
    return-void
.end method

.method public append(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/CharSequence;

    .prologue
    .line 2902
    sget-object v0, Landroid/webkitsec/HtmlComposerView$InsertionPosition;->INSERT_AT_END:Landroid/webkitsec/HtmlComposerView$InsertionPosition;

    invoke-virtual {p0, p1, v0}, Landroid/webkitsec/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkitsec/HtmlComposerView$InsertionPosition;)Z

    .line 2903
    return-void
.end method

.method public canCopy()Z
    .locals 1

    .prologue
    .line 2906
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_0

    .line 2907
    const/4 v0, 0x1

    .line 2910
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canCut()Z
    .locals 1

    .prologue
    .line 2914
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_0

    .line 2915
    const/4 v0, 0x1

    .line 2918
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canPaste()Z
    .locals 1

    .prologue
    .line 2922
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionEnd()I

    move-result v0

    if-ltz v0, :cond_0

    .line 2923
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebClipboard;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2924
    const/4 v0, 0x1

    .line 2927
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canRedo()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2984
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3001
    :cond_0
    :goto_0
    return v3

    .line 2986
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2987
    .local v0, "canRedo":Ljava/lang/Boolean;
    new-instance v2, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v0}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2988
    .local v2, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v2

    .line 2989
    :try_start_0
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2990
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    const/16 v4, 0x20f

    invoke-virtual {v3, v4, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2995
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3000
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3001
    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 2992
    :cond_2
    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 3000
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 2996
    :catch_0
    move-exception v1

    .line 2997
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2998
    const-string v3, "HtmlComposerView"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public canUndo()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 3005
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3023
    :cond_0
    :goto_0
    return v3

    .line 3007
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3008
    .local v0, "canUndo":Ljava/lang/Boolean;
    new-instance v2, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v0}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3009
    .local v2, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v2

    .line 3010
    :try_start_0
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 3011
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    const/16 v4, 0x20d

    invoke-virtual {v3, v4, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3016
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3021
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3023
    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 3013
    :cond_2
    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 3021
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 3017
    :catch_0
    move-exception v1

    .line 3018
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    const-string v3, "HtmlComposerView"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public changeFontBackColorForSelection(Ljava/lang/String;)V
    .locals 1
    .param p1, "fontColor"    # Ljava/lang/String;

    .prologue
    .line 2138
    const-string v0, "BackColor"

    invoke-virtual {p0, v0, p1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2139
    return-void
.end method

.method public changeFontColorForSelection(Ljava/lang/String;)V
    .locals 1
    .param p1, "fontColor"    # Ljava/lang/String;

    .prologue
    .line 2142
    const-string v0, "ForeColor"

    invoke-virtual {p0, v0, p1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2143
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->contentInvalidateAll()V

    .line 2144
    return-void
.end method

.method public changeFontNameForSelection(Ljava/lang/String;)V
    .locals 1
    .param p1, "fontName"    # Ljava/lang/String;

    .prologue
    .line 2147
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2148
    const-string v0, "FontName"

    invoke-virtual {p0, v0, p1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2149
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 2150
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2151
    return-void
.end method

.method public changeFontSize(Ljava/lang/String;)V
    .locals 1
    .param p1, "fontSize"    # Ljava/lang/String;

    .prologue
    .line 2161
    const-string v0, "FontValue"

    invoke-virtual {p0, v0, p1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2162
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(I)V

    .line 2163
    return-void
.end method

.method public changeFontSizeForSelection(Ljava/lang/String;)V
    .locals 1
    .param p1, "fontSize"    # Ljava/lang/String;

    .prologue
    .line 2154
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2155
    const-string v0, "FontSize"

    invoke-virtual {p0, v0, p1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2156
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 2157
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2158
    return-void
.end method

.method public ckeckIfSelectionAtBoundry()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 3027
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3044
    :cond_0
    :goto_0
    return v2

    .line 3029
    :cond_1
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3030
    .local v1, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 3031
    :try_start_0
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3032
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x217

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3037
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3042
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3044
    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 3034
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 3042
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 3038
    :catch_0
    move-exception v0

    .line 3039
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3040
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public cleanTempResources()V
    .locals 2

    .prologue
    .line 3048
    const-string v0, "HtmlComposerView"

    const-string v1, "cleanTempResources"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3049
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebClipboard;->deleteTempDirectory()V

    .line 3050
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3053
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_EnableBidirection"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3054
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getComposingState()Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 3055
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerInputConnection;->finishComposingText()Z

    .line 3058
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    .line 3059
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->selectAllSec()Z

    .line 3061
    const-string v0, ""

    invoke-virtual {p0, v0, v2}, Landroid/webkitsec/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 3062
    return-void
.end method

.method public clearComposingSelection()V
    .locals 4

    .prologue
    .line 3064
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3065
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x219

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    .line 3066
    :cond_0
    return-void
.end method

.method public clearImageSelection()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 6331
    const-string v0, "HtmlComposerView"

    const-string v1, "HtmlComposerView  clearImageSelection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6333
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    if-eqz v0, :cond_0

    .line 6334
    const-string v0, "HtmlComposerView"

    const-string v1, "HtmlComposerView  clearImageSelection  Clearing selection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6335
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    .line 6336
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    .line 6337
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeMoved:Z

    .line 6338
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    .line 6339
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->resizingHandlerInActionMove:Z

    .line 6341
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    .line 6342
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleHandleEnabled:Z

    .line 6343
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomHandleEnabled:Z

    .line 6344
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    .line 6345
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomHandleEnabled:Z

    .line 6346
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleHandleEnabled:Z

    .line 6347
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    .line 6348
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleHandleEnabled:Z

    .line 6350
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineHeight:F

    .line 6351
    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->prevOutlineWidth:F

    .line 6353
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearSelection()V

    .line 6355
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    .line 6357
    :cond_0
    return-void
.end method

.method public clearSelection()V
    .locals 1

    .prologue
    .line 505
    invoke-super {p0}, Landroid/webkitsec/WebView;->clearSelection()V

    .line 508
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    .line 510
    return-void
.end method

.method public commitInputMethodText(Ljava/lang/String;I)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "numOfcharsToDeleteFromCursorPos"    # I

    .prologue
    .line 3069
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3080
    :cond_0
    :goto_0
    return-void

    .line 3071
    :cond_1
    if-lez p2, :cond_2

    .line 3072
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commitInputMethodText "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3073
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3074
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x1fc

    invoke-virtual {v0, v1, p2}, Landroid/webkitsec/WebViewCore;->sendMessage(II)V

    .line 3077
    :cond_2
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3078
    const-string v0, "InsertText"

    invoke-virtual {p0, v0, p1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3079
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    goto :goto_0
.end method

.method public copy()V
    .locals 2

    .prologue
    .line 2166
    const-string v0, "Copy"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2167
    return-void
.end method

.method public cut()V
    .locals 2

    .prologue
    .line 2171
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2176
    :goto_0
    return-void

    .line 2175
    :cond_0
    const-string v0, "Cut"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public delayedUpdateOutlineDrawRect()V
    .locals 4

    .prologue
    .line 5165
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 5166
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x503

    iput v1, v0, Landroid/os/Message;->what:I

    .line 5168
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    if-eqz v1, :cond_0

    .line 5169
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5171
    :cond_0
    return-void
.end method

.method public delete()V
    .locals 4

    .prologue
    .line 3090
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getImageSelectRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 3091
    .local v0, "cursurRect":Landroid/graphics/Rect;
    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete() -- cursurRect.left  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cursurRect.top =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3092
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3}, Landroid/webkitsec/WebViewClassic;->setTextSelecitonManualAtContentPoint(II)Z

    .line 3093
    const-string v1, "Delete"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3094
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 3095
    return-void
.end method

.method public deleteSurroundingText(II)V
    .locals 2
    .param p1, "leftLength"    # I
    .param p2, "rightLength"    # I

    .prologue
    .line 3098
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3104
    :cond_0
    :goto_0
    return-void

    .line 3100
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3101
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x1ff

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    .line 3103
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 3107
    const-string v0, "HtmlComposerView"

    const-string v1, " htmlcomposer destroy() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3109
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->isInputMethodTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3111
    const-string v0, "HtmlComposerView"

    const-string v1, "htmlcomposer destroy() hide "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3112
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    .line 3115
    :cond_0
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    if-eqz v0, :cond_1

    .line 3116
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerInputConnection;->setTargetNull()V

    .line 3117
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    .line 3120
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    if-eqz v0, :cond_2

    .line 3121
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3122
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    const/16 v1, 0x501

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3123
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    const/16 v1, 0x502

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3124
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    const/16 v1, 0x503

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3125
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    const/16 v1, 0x504

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3128
    :cond_2
    invoke-super {p0}, Landroid/webkitsec/WebView;->destroy()V

    .line 3129
    return-void
.end method

.method public disableEditing()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3132
    invoke-direct {p0, v1}, Landroid/webkitsec/HtmlComposerView;->setEditable(Z)V

    .line 3133
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettings;->setEditableSupport(Z)V

    .line 3134
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isViewInFocus:Z

    if-eqz v0, :cond_0

    .line 3135
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    .line 3136
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 26
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 720
    const/16 v24, 0x0

    .line 721
    .local v24, "retVal":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    const/16 v18, 0x1

    .line 722
    .local v18, "down":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v22

    .line 723
    .local v22, "keyCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v15

    .line 725
    .local v15, "MetaState":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 726
    const-string v4, "HtmlComposerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " dispatchKeyEvent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_0
    const/16 v4, 0x39

    move/from16 v0, v22

    if-ne v0, v4, :cond_1

    .line 730
    if-eqz v18, :cond_6

    .line 731
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mAltKeyIsPressed:Z

    .line 736
    :cond_1
    :goto_1
    const/16 v4, 0x7a

    move/from16 v0, v22

    if-eq v0, v4, :cond_3

    const/high16 v4, 0x200000

    and-int/2addr v4, v15

    const/high16 v5, 0x200000

    if-eq v4, v5, :cond_2

    const/16 v4, 0x97

    move/from16 v0, v22

    if-eq v0, v4, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mAltKeyIsPressed:Z

    if-eqz v4, :cond_e

    const/16 v4, 0x15

    move/from16 v0, v22

    if-ne v0, v4, :cond_e

    .line 738
    :cond_3
    const/4 v4, 0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_4

    .line 739
    and-int/lit8 v4, v15, 0x1

    if-eqz v4, :cond_7

    const/16 v21, 0x1

    .line 740
    .local v21, "isMetaShiftOn":Z
    :goto_2
    and-int/lit16 v4, v15, 0x1000

    if-eqz v4, :cond_8

    const/16 v20, 0x1

    .line 742
    .local v20, "isMetaCtrlOn":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->finishComposingText()Z

    .line 743
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_9

    if-nez v21, :cond_9

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-nez v4, :cond_9

    if-nez v20, :cond_9

    .line 744
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorToBeginningOfLine()V

    .line 755
    .end local v20    # "isMetaCtrlOn":Z
    .end local v21    # "isMetaShiftOn":Z
    :cond_4
    :goto_4
    const/16 v23, 0x1

    .line 1008
    :goto_5
    return v23

    .line 721
    .end local v15    # "MetaState":I
    .end local v18    # "down":Z
    .end local v22    # "keyCode":I
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 733
    .restart local v15    # "MetaState":I
    .restart local v18    # "down":Z
    .restart local v22    # "keyCode":I
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mAltKeyIsPressed:Z

    goto :goto_1

    .line 739
    :cond_7
    const/16 v21, 0x0

    goto :goto_2

    .line 740
    .restart local v21    # "isMetaShiftOn":Z
    :cond_8
    const/16 v20, 0x0

    goto :goto_3

    .line 745
    .restart local v20    # "isMetaCtrlOn":Z
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_b

    if-nez v21, :cond_b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-nez v4, :cond_a

    if-eqz v20, :cond_b

    .line 746
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorBegining()V

    goto :goto_4

    .line 747
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_c

    if-eqz v21, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-nez v4, :cond_d

    if-nez v20, :cond_d

    .line 748
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorSelectionToBeginningOfLine()V

    .line 749
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_4

    .line 751
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorSelectionToBeginningOfDocument()V

    .line 752
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_4

    .line 756
    .end local v20    # "isMetaCtrlOn":Z
    .end local v21    # "isMetaShiftOn":Z
    :cond_e
    const/16 v4, 0x7b

    move/from16 v0, v22

    if-eq v0, v4, :cond_10

    const/high16 v4, 0x200000

    and-int/2addr v4, v15

    const/high16 v5, 0x200000

    if-eq v4, v5, :cond_f

    const/16 v4, 0x91

    move/from16 v0, v22

    if-eq v0, v4, :cond_10

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mAltKeyIsPressed:Z

    if-eqz v4, :cond_19

    const/16 v4, 0x16

    move/from16 v0, v22

    if-ne v0, v4, :cond_19

    .line 758
    :cond_10
    const/4 v4, 0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_11

    .line 759
    and-int/lit8 v4, v15, 0x1

    if-eqz v4, :cond_12

    const/16 v21, 0x1

    .line 760
    .restart local v21    # "isMetaShiftOn":Z
    :goto_6
    and-int/lit16 v4, v15, 0x1000

    if-eqz v4, :cond_13

    const/16 v20, 0x1

    .line 762
    .restart local v20    # "isMetaCtrlOn":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->finishComposingText()Z

    .line 763
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_14

    if-nez v21, :cond_14

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-nez v4, :cond_14

    if-nez v20, :cond_14

    .line 764
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorToEndOfLine()V

    .line 775
    .end local v20    # "isMetaCtrlOn":Z
    .end local v21    # "isMetaShiftOn":Z
    :cond_11
    :goto_8
    const/16 v23, 0x1

    goto/16 :goto_5

    .line 759
    :cond_12
    const/16 v21, 0x0

    goto :goto_6

    .line 760
    .restart local v21    # "isMetaShiftOn":Z
    :cond_13
    const/16 v20, 0x0

    goto :goto_7

    .line 765
    .restart local v20    # "isMetaCtrlOn":Z
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_16

    if-nez v21, :cond_16

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-nez v4, :cond_15

    if-eqz v20, :cond_16

    .line 766
    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorEnd()V

    goto :goto_8

    .line 767
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_17

    if-eqz v21, :cond_18

    :cond_17
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    if-nez v4, :cond_18

    if-nez v20, :cond_18

    .line 768
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorSelectionToEndOfLine()V

    .line 769
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_8

    .line 771
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorSelectionToEndOfDocument()V

    .line 772
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_8

    .line 776
    .end local v20    # "isMetaCtrlOn":Z
    .end local v21    # "isMetaShiftOn":Z
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mAltKeyIsPressed:Z

    if-eqz v4, :cond_1f

    const/16 v4, 0x13

    move/from16 v0, v22

    if-eq v0, v4, :cond_1a

    const/16 v4, 0x14

    move/from16 v0, v22

    if-ne v0, v4, :cond_1f

    .line 777
    :cond_1a
    const/4 v4, 0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_1d

    const/16 v4, 0x13

    move/from16 v0, v22

    if-ne v0, v4, :cond_1d

    .line 778
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_1c

    .line 779
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorBegining()V

    .line 795
    :cond_1b
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 796
    const/16 v23, 0x1

    goto/16 :goto_5

    .line 782
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorSelectionToBeginningOfDocument()V

    .line 783
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_9

    .line 785
    :cond_1d
    const/4 v4, 0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_1b

    const/16 v4, 0x14

    move/from16 v0, v22

    if-ne v0, v4, :cond_1b

    .line 786
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_1e

    .line 787
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorEnd()V

    goto :goto_9

    .line 790
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorSelectionToEndOfDocument()V

    .line 791
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_9

    .line 797
    :cond_1f
    const/16 v4, 0x5c

    move/from16 v0, v22

    if-eq v0, v4, :cond_20

    const/high16 v4, 0x200000

    and-int/2addr v4, v15

    const/high16 v5, 0x200000

    if-eq v4, v5, :cond_23

    const/16 v4, 0x99

    move/from16 v0, v22

    if-ne v0, v4, :cond_23

    .line 799
    :cond_20
    const/4 v4, 0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_21

    .line 800
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_22

    .line 801
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->finishComposingText()Z

    .line 802
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorToPageUp()V

    .line 803
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 804
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 813
    :cond_21
    :goto_a
    const/16 v23, 0x1

    goto/16 :goto_5

    .line 807
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->finishComposingText()Z

    .line 808
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorSelectionToPageUp()V

    .line 809
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 810
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_a

    .line 814
    :cond_23
    const/16 v4, 0x5d

    move/from16 v0, v22

    if-eq v0, v4, :cond_24

    const/high16 v4, 0x200000

    and-int/2addr v4, v15

    const/high16 v5, 0x200000

    if-eq v4, v5, :cond_27

    const/16 v4, 0x93

    move/from16 v0, v22

    if-ne v0, v4, :cond_27

    .line 816
    :cond_24
    const/4 v4, 0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_25

    .line 817
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-nez v4, :cond_26

    .line 818
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->finishComposingText()Z

    .line 819
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorToPageDown()V

    .line 820
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 821
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 830
    :cond_25
    :goto_b
    const/16 v23, 0x1

    goto/16 :goto_5

    .line 824
    :cond_26
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->finishComposingText()Z

    .line 825
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->moveCursorSelectionToPageDown()V

    .line 826
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 827
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_b

    .line 833
    :cond_27
    const/high16 v4, 0x200000

    and-int/2addr v4, v15

    const/high16 v5, 0x200000

    if-eq v4, v5, :cond_2d

    .line 834
    const/16 v4, 0x92

    move/from16 v0, v22

    if-eq v0, v4, :cond_28

    const/16 v4, 0x94

    move/from16 v0, v22

    if-eq v0, v4, :cond_28

    const/16 v4, 0x96

    move/from16 v0, v22

    if-eq v0, v4, :cond_28

    const/16 v4, 0x98

    move/from16 v0, v22

    if-eq v0, v4, :cond_28

    const/16 v4, 0x9e

    move/from16 v0, v22

    if-ne v0, v4, :cond_2d

    .line 839
    :cond_28
    if-eqz v18, :cond_2d

    .line 840
    const/16 v4, 0x92

    move/from16 v0, v22

    if-ne v0, v4, :cond_29

    .line 841
    const/16 v22, 0x14

    .line 842
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/webkitsec/HtmlComposerView;->handleNavKeys(I)V

    .line 843
    const/16 v23, 0x1

    goto/16 :goto_5

    .line 844
    :cond_29
    const/16 v4, 0x94

    move/from16 v0, v22

    if-ne v0, v4, :cond_2a

    .line 845
    const/16 v22, 0x15

    .line 846
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/webkitsec/HtmlComposerView;->handleNavKeys(I)V

    .line 847
    const/16 v23, 0x1

    goto/16 :goto_5

    .line 848
    :cond_2a
    const/16 v4, 0x96

    move/from16 v0, v22

    if-ne v0, v4, :cond_2b

    .line 849
    const/16 v22, 0x16

    .line 850
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/webkitsec/HtmlComposerView;->handleNavKeys(I)V

    .line 851
    const/16 v23, 0x1

    goto/16 :goto_5

    .line 852
    :cond_2b
    const/16 v4, 0x98

    move/from16 v0, v22

    if-ne v0, v4, :cond_2c

    .line 853
    const/16 v22, 0x13

    .line 854
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/webkitsec/HtmlComposerView;->handleNavKeys(I)V

    .line 855
    const/16 v23, 0x1

    goto/16 :goto_5

    .line 856
    :cond_2c
    const/16 v4, 0x9e

    move/from16 v0, v22

    if-ne v0, v4, :cond_2d

    .line 857
    const/4 v2, 0x0

    .line 859
    .local v2, "newKeyEvent":Landroid/view/KeyEvent;
    new-instance v2, Landroid/view/KeyEvent;

    .end local v2    # "newKeyEvent":Landroid/view/KeyEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    const/16 v8, 0x70

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v14

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 869
    .restart local v2    # "newKeyEvent":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    invoke-super {v0, v2}, Landroid/webkitsec/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v23

    goto/16 :goto_5

    .line 875
    .end local v2    # "newKeyEvent":Landroid/view/KeyEvent;
    :cond_2d
    const/16 v4, 0x13

    move/from16 v0, v22

    if-lt v0, v4, :cond_34

    const/16 v4, 0x16

    move/from16 v0, v22

    if-gt v0, v4, :cond_34

    .line 876
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->ckeckIfSelectionAtBoundry()I

    move-result v25

    .line 877
    .local v25, "selctionAtBoundry":I
    const-string v4, "HtmlComposerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " dispatchKeyEvent selectionAtBoundary = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    const-string v4, "HtmlComposerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " dispatchKeyEvent down = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    and-int/lit8 v4, v25, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2e

    const/16 v4, 0x13

    move/from16 v0, v22

    if-eq v0, v4, :cond_2f

    :cond_2e
    and-int/lit8 v4, v25, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_32

    const/16 v4, 0x14

    move/from16 v0, v22

    if-ne v0, v4, :cond_32

    .line 884
    :cond_2f
    const/16 v17, 0x102

    .line 885
    .local v17, "ccSource":I
    const/16 v16, 0x6

    .line 886
    .local v16, "ccFlag":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v4

    const/16 v5, 0x102

    if-ne v4, v5, :cond_30

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_30

    const/16 v19, 0x1

    .line 888
    .local v19, "isKeyFromCursorControl":Z
    :goto_c
    const-string v4, "HtmlComposerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " dispatchKeyEvent isKeyFromCursorControl = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    if-eqz v19, :cond_31

    .line 891
    const/16 v23, 0x1

    goto/16 :goto_5

    .line 886
    .end local v19    # "isKeyFromCursorControl":Z
    :cond_30
    const/16 v19, 0x0

    goto :goto_c

    .line 895
    .restart local v19    # "isKeyFromCursorControl":Z
    :cond_31
    invoke-super/range {p0 .. p1}, Landroid/webkitsec/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v23

    goto/16 :goto_5

    .line 898
    .end local v16    # "ccFlag":I
    .end local v17    # "ccSource":I
    .end local v19    # "isKeyFromCursorControl":Z
    :cond_32
    if-eqz v18, :cond_33

    .line 899
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/webkitsec/HtmlComposerView;->handleNavKeys(I)V

    .line 900
    :cond_33
    const/16 v23, 0x1

    goto/16 :goto_5

    .line 903
    .end local v25    # "selctionAtBoundry":I
    :cond_34
    const/16 v4, 0x3e

    move/from16 v0, v22

    if-ne v4, v0, :cond_36

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mAltKeyIsPressed:Z

    if-nez v4, :cond_36

    .line 904
    if-eqz v18, :cond_35

    .line 905
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 906
    const-string v4, "InsertText"

    const-string v5, " "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 907
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v5, v4, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    .line 908
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v5, v4, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    .line 909
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 910
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 912
    :cond_35
    const/16 v23, 0x1

    goto/16 :goto_5

    .line 914
    :cond_36
    const/16 v4, 0x3d

    move/from16 v0, v22

    if-ne v4, v0, :cond_39

    .line 915
    if-eqz v18, :cond_38

    .line 916
    const-string v4, "InsertText"

    const-string v5, "    "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 917
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->removeComposingSpan()V

    .line 918
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 920
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    if-ne v4, v5, :cond_37

    .line 921
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 923
    :cond_37
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 925
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_38
    const/16 v23, 0x1

    goto/16 :goto_5

    .line 927
    :cond_39
    const/16 v4, 0x20

    move/from16 v0, v22

    if-ne v4, v0, :cond_3b

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 928
    if-eqz v18, :cond_3a

    .line 929
    const/4 v4, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v5

    if-ne v4, v5, :cond_3a

    .line 930
    const-string v4, "Delete"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 931
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 932
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 935
    :cond_3a
    const/16 v23, 0x1

    goto/16 :goto_5

    .line 937
    :cond_3b
    const/16 v4, 0x42

    move/from16 v0, v22

    if-eq v0, v4, :cond_3c

    const/16 v4, 0xa0

    move/from16 v0, v22

    if-ne v0, v4, :cond_3e

    .line 938
    :cond_3c
    if-eqz v18, :cond_3d

    .line 939
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 940
    const-string v4, "InsertText"

    const-string v5, "\n"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 941
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v5, v4, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    .line 942
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v5, v4, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    .line 943
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 944
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 945
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 947
    :cond_3d
    const/16 v23, 0x1

    goto/16 :goto_5

    .line 949
    :cond_3e
    const/16 v4, 0x71

    move/from16 v0, v22

    if-eq v0, v4, :cond_3f

    const/16 v4, 0x72

    move/from16 v0, v22

    if-ne v0, v4, :cond_40

    .line 950
    :cond_3f
    invoke-super/range {p0 .. p1}, Landroid/webkitsec/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v23

    goto/16 :goto_5

    .line 952
    :cond_40
    const/16 v4, 0x1d

    move/from16 v0, v22

    if-eq v0, v4, :cond_41

    const/16 v4, 0x1f

    move/from16 v0, v22

    if-eq v0, v4, :cond_41

    const/16 v4, 0x32

    move/from16 v0, v22

    if-eq v0, v4, :cond_41

    const/16 v4, 0x34

    move/from16 v0, v22

    if-eq v0, v4, :cond_41

    const/16 v4, 0x36

    move/from16 v0, v22

    if-eq v0, v4, :cond_41

    const/16 v4, 0x35

    move/from16 v0, v22

    if-ne v0, v4, :cond_42

    :cond_41
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v4

    if-eqz v4, :cond_42

    const/4 v4, 0x1

    move/from16 v0, v18

    if-ne v4, v0, :cond_42

    .line 956
    const-string v4, "HtmlComposerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCtrlPressed and keyCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    sparse-switch v22, :sswitch_data_0

    .line 1001
    :cond_42
    if-eqz v24, :cond_43

    .line 1002
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->setComposingState(Z)V

    .line 1003
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 1005
    .restart local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v3 .. v8}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    move/from16 v23, v24

    .line 1006
    goto/16 :goto_5

    .line 960
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :sswitch_0
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->canSelectAll()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 961
    const/16 v23, 0x0

    .line 962
    .local v23, "result":Z
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkitsec/HtmlComposerView;->mByHWKeyCommand:Z

    .line 963
    const v4, 0x102001f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v23

    .line 964
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    goto/16 :goto_5

    .line 970
    .end local v23    # "result":Z
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->canCopy()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 971
    const v4, 0x1020021

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v23

    goto/16 :goto_5

    .line 976
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->canPaste()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 977
    const v4, 0x1020022

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v23

    goto/16 :goto_5

    .line 982
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->canCut()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 983
    const v4, 0x1020020

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v23

    goto/16 :goto_5

    .line 988
    :sswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->canUndo()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 989
    const/16 v4, 0x2711

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v23

    goto/16 :goto_5

    .line 994
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->canRedo()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 995
    const/16 v4, 0x65

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v23

    goto/16 :goto_5

    .line 1008
    :cond_43
    invoke-super/range {p0 .. p1}, Landroid/webkitsec/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v23

    goto/16 :goto_5

    .line 958
    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_0
        0x1f -> :sswitch_1
        0x32 -> :sswitch_2
        0x34 -> :sswitch_3
        0x35 -> :sswitch_5
        0x36 -> :sswitch_4
    .end sparse-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1086
    invoke-super {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1087
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtmlComposerView"

    const-string v1, "dispatchPopulateAccessibilityEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public doExecute(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "in_args"    # Landroid/os/Bundle;
    .param p2, "out_args"    # Landroid/os/Bundle;

    .prologue
    .line 6416
    const/4 v0, 0x0

    return-object v0
.end method

.method public doResizeImage(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 3147
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3151
    :cond_0
    :goto_0
    return-void

    .line 3149
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3150
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x221

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    goto :goto_0
.end method

.method public drawSelectionControl()V
    .locals 1

    .prologue
    .line 6158
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 6159
    return-void
.end method

.method public drawSelectionControl(I)V
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 6175
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6181
    :cond_0
    :goto_0
    return-void

    .line 6177
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6178
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x205

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    .line 6180
    :cond_2
    invoke-virtual {p0, p1}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(I)V

    goto :goto_0
.end method

.method public drawSelectionControl(Z)V
    .locals 3
    .param p1, "isTextChanged"    # Z

    .prologue
    const/4 v2, 0x1

    .line 6162
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6172
    :cond_0
    :goto_0
    return-void

    .line 6164
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6165
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x205

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    .line 6167
    :cond_2
    if-ne v2, p1, :cond_0

    .line 6169
    invoke-virtual {p0, v2}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_0
.end method

.method public dropTheDraggedText(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 4384
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4390
    :cond_0
    :goto_0
    return-void

    .line 4386
    :cond_1
    const-string v0, "HtmlComposerView"

    const-string v1, "dropTheDraggedText"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4388
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4389
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x22d

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    goto :goto_0
.end method

.method public enableEditing()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3267
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettings;->setEditableSupport(Z)V

    .line 3268
    invoke-direct {p0, v1}, Landroid/webkitsec/HtmlComposerView;->setEditable(Z)V

    .line 3269
    return-void
.end method

.method public execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const v6, 0x1040bf6

    const v5, 0x1040bf5

    const/4 v1, 0x0

    .line 3154
    const-string v2, "Insert"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3156
    const/4 v0, 0x0

    .line 3157
    .local v0, "length":I
    if-eqz p2, :cond_0

    .line 3158
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 3159
    :cond_0
    invoke-direct {p0, v0}, Landroid/webkitsec/HtmlComposerView;->isInsertionAllowed(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3161
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToastForMaxLength:Landroid/widget/Toast;

    if-nez v2, :cond_1

    .line 3162
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToastForMaxLength:Landroid/widget/Toast;

    .line 3166
    :goto_0
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToastForMaxLength:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 3180
    .end local v0    # "length":I
    :goto_1
    return v1

    .line 3164
    .restart local v0    # "length":I
    :cond_1
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mToastForMaxLength:Landroid/widget/Toast;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3171
    :cond_2
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-eqz v1, :cond_3

    .line 3173
    const-string v1, "HtmlComposerView"

    const-string v2, "HtmlComposerView  --- Calling cleaselection "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3174
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    .line 3178
    .end local v0    # "length":I
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/webkitsec/WebView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3180
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public executeAlignCenter()V
    .locals 2

    .prologue
    .line 2260
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2261
    const-string v0, "JustifyCenter"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2262
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2263
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2264
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->onAlignSelectedImageOutlineRectUpdate()V

    .line 2265
    return-void
.end method

.method public executeAlignLeft()V
    .locals 2

    .prologue
    .line 2244
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2245
    const-string v0, "JustifyLeft"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2246
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2247
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2248
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->onAlignSelectedImageOutlineRectUpdate()V

    .line 2249
    return-void
.end method

.method public executeAlignRight()V
    .locals 2

    .prologue
    .line 2252
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2253
    const-string v0, "JustifyRight"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2254
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2255
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2256
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->onAlignSelectedImageOutlineRectUpdate()V

    .line 2257
    return-void
.end method

.method public executeHyperlink(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 2232
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2233
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2234
    const-string v0, "CreateLink"

    invoke-virtual {p0, v0, p1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2239
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2240
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2241
    return-void

    .line 2237
    :cond_0
    const-string v0, "Unlink"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public executeIndent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2179
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2180
    const-string v0, "Indent"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2181
    invoke-virtual {p0, v2}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2182
    invoke-virtual {p0, v2}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 2183
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2184
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->selectedImageOutlineRectUpdate()V

    .line 2185
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->contentInvalidateAll()V

    .line 2186
    return-void
.end method

.method public executeOutdent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2189
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2190
    const-string v0, "Outdent"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2191
    invoke-virtual {p0, v2}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2192
    invoke-virtual {p0, v2}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 2193
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2194
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->selectedImageOutlineRectUpdate()V

    .line 2195
    return-void
.end method

.method public executeUnLink()V
    .locals 2

    .prologue
    .line 2226
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2227
    const-string v0, "UnLink"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2228
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2229
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2230
    return-void
.end method

.method public getAccessibilitySelectionEnd()I
    .locals 1

    .prologue
    .line 1124
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method public getAccessibilitySelectionStart()I
    .locals 1

    .prologue
    .line 1109
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public getBodyHTML()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3272
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3289
    :cond_0
    :goto_0
    return-object v2

    .line 3274
    :cond_1
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-direct {v1, p0, v2, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3275
    .local v1, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v1

    .line 3276
    :try_start_0
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3277
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x200

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3282
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3287
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3289
    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 3279
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 3287
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 3283
    :catch_0
    move-exception v0

    .line 3284
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for overrideUrl"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3285
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getCaretState()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 6211
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 6224
    :cond_0
    :goto_0
    return v2

    .line 6213
    :cond_1
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v3, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p0, v3, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6214
    .local v1, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v1

    .line 6215
    :try_start_0
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x20c

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6217
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6222
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6223
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCaretState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6224
    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    .line 6218
    :catch_0
    move-exception v0

    .line 6219
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6220
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6222
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public declared-synchronized getComposingState()Z
    .locals 1

    .prologue
    .line 396
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConetextmenuVisibility()Z
    .locals 1

    .prologue
    .line 3293
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    return v0
.end method

.method public getContentX(I)I
    .locals 3
    .param p1, "RawX"    # I

    .prologue
    .line 6401
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget v2, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v0

    .line 6402
    .local v0, "contentX":I
    return v0
.end method

.method public getContentY(I)I
    .locals 3
    .param p1, "RawY"    # I

    .prologue
    .line 6406
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget v2, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v0

    .line 6407
    .local v0, "contentY":I
    return v0
.end method

.method public getCurrentFontSize()I
    .locals 4

    .prologue
    .line 3298
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3299
    .local v1, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 3300
    :try_start_0
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x222

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3303
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3307
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3309
    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 3304
    :catch_0
    move-exception v0

    .line 3305
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3307
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public getCurrentFontValue()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 3314
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v3, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3315
    .local v1, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 3316
    :try_start_0
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3317
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x225

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3321
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3325
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3327
    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    return v2

    .line 3319
    :cond_0
    :try_start_3
    monitor-exit v1

    goto :goto_1

    .line 3325
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 3322
    :catch_0
    move-exception v0

    .line 3323
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public getCursorPressed()Z
    .locals 1

    .prologue
    .line 3332
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-boolean v0, v0, Landroid/webkitsec/WebViewClassic;->mIsPressingHandle:Z

    return v0
.end method

.method public getCursorRect(Z)Landroid/graphics/Rect;
    .locals 6
    .param p1, "giveContentRect"    # Z

    .prologue
    .line 6183
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 6198
    :goto_0
    return-object v4

    .line 6185
    :cond_1
    const/4 v4, 0x1

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v4

    .line 6186
    .local v1, "paramArray":[Ljava/lang/Object;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 6187
    .local v2, "rect":Landroid/graphics/Rect;
    new-instance v3, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-direct {v3, p0, v1, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6188
    .local v3, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    monitor-enter v3

    .line 6189
    :try_start_0
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    const/16 v5, 0x209

    invoke-virtual {v4, v5, v3}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6192
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6197
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6198
    invoke-virtual {v3}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    goto :goto_0

    .line 6193
    :catch_0
    move-exception v0

    .line 6194
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "HtmlComposerView"

    const-string v5, "Caught exception while waiting for overrideUrl"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6195
    const-string v4, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6197
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method public getHTML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3336
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getBodyHTML()Ljava/lang/String;

    move-result-object v0

    .line 3337
    .local v0, "text":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, ""

    .line 3341
    :goto_0
    return-object v1

    .line 3338
    :cond_0
    const-string v1, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)true\"?"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3339
    const-string v1, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)false\"?"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 3341
    goto :goto_0
.end method

.method public getImageSize(II)Landroid/graphics/Rect;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2931
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2951
    :goto_0
    return-object v4

    .line 2933
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2935
    .local v2, "rect":Landroid/graphics/Rect;
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    .line 2936
    .local v1, "paramArray":[Ljava/lang/Object;
    new-instance v3, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-direct {v3, p0, v1, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2937
    .local v3, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    monitor-enter v3

    .line 2938
    :try_start_0
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2939
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    const/16 v5, 0x226

    invoke-virtual {v4, v5, v3}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2944
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2949
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2951
    invoke-virtual {v3}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    goto :goto_0

    .line 2941
    :cond_2
    :try_start_3
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    monitor-exit v3

    goto :goto_0

    .line 2949
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 2945
    :catch_0
    move-exception v0

    .line 2946
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v4, "HtmlComposerView"

    const-string v5, "Caught exception while waiting for overrideUrl"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2947
    const-string v4, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 3345
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->imeOptions:I

    return v0
.end method

.method public getIterableTextForAccessibility()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1101
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMailContent()Landroid/webkitsec/WebHTMLMarkupData;
    .locals 4

    .prologue
    .line 3349
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getMailHTML()Landroid/webkitsec/WebHTMLMarkupData;

    move-result-object v0

    .line 3350
    .local v0, "data":Landroid/webkitsec/WebHTMLMarkupData;
    if-nez v0, :cond_1

    .line 3358
    :cond_0
    :goto_0
    return-object v0

    .line 3352
    :cond_1
    invoke-virtual {v0}, Landroid/webkitsec/WebHTMLMarkupData;->HTMLFragment()Ljava/lang/String;

    move-result-object v1

    .line 3353
    .local v1, "text":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3354
    const-string v2, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)true\"?"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3355
    const-string v2, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)false\"?"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3356
    invoke-virtual {v0, v1}, Landroid/webkitsec/WebHTMLMarkupData;->setHTMLFragment(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMailHTML()Landroid/webkitsec/WebHTMLMarkupData;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 3362
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3380
    :cond_0
    :goto_0
    return-object v3

    .line 3364
    :cond_1
    new-instance v1, Landroid/webkitsec/WebHTMLMarkupData;

    invoke-direct {v1}, Landroid/webkitsec/WebHTMLMarkupData;-><init>()V

    .line 3365
    .local v1, "mailMarkupData":Landroid/webkitsec/WebHTMLMarkupData;
    new-instance v2, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-direct {v2, p0, v3, v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3366
    .local v2, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/webkitsec/WebHTMLMarkupData;>;"
    monitor-enter v2

    .line 3367
    :try_start_0
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 3368
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    const/16 v4, 0x206

    invoke-virtual {v3, v4, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3373
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3378
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3380
    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkitsec/WebHTMLMarkupData;

    goto :goto_0

    .line 3370
    :cond_2
    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 3378
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 3374
    :catch_0
    move-exception v0

    .line 3375
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3376
    const-string v3, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getPlainText()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3384
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3400
    :cond_0
    :goto_0
    return-object v2

    .line 3385
    :cond_1
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-direct {v1, p0, v2, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3386
    .local v1, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v1

    .line 3387
    :try_start_0
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3388
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x202

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3393
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3398
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3400
    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 3390
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 3398
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 3394
    :catch_0
    move-exception v0

    .line 3395
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for overrideUrl"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3396
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getPrivateImeOptions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3404
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedHtmlText()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 3196
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3214
    :cond_0
    :goto_0
    return-object v2

    .line 3198
    :cond_1
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-direct {v1, p0, v2, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3199
    .local v1, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v1

    .line 3200
    :try_start_0
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3201
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    const/16 v4, 0x230

    invoke-virtual {v3, v4, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3206
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3212
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3214
    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 3203
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 3212
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 3207
    :catch_0
    move-exception v0

    .line 3208
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3209
    const-string v3, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3210
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public getSelectedImageRect()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 2955
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2980
    :goto_0
    return-object v4

    .line 2956
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2957
    .local v1, "rect":Landroid/graphics/Rect;
    const/4 v3, -0x1

    .line 2958
    .local v3, "setValue":I
    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 2959
    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 2960
    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 2961
    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 2963
    new-instance v2, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2964
    .local v2, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->isComposerImageTouched()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2965
    monitor-enter v2

    .line 2966
    :try_start_0
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2967
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    const/16 v5, 0x227

    invoke-virtual {v4, v5, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2972
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2977
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2980
    :cond_2
    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    goto :goto_0

    .line 2969
    :cond_3
    :try_start_3
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    monitor-exit v2

    goto :goto_0

    .line 2977
    :catchall_0
    move-exception v4

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 2973
    :catch_0
    move-exception v0

    .line 2974
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v4, "HtmlComposerView"

    const-string v5, "Caught exception while waiting for overrideUrl"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2975
    const-string v4, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3218
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v0, :cond_0

    .line 3219
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebViewCore;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    .line 3221
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getSelectionEnd()I
    .locals 1

    .prologue
    .line 3461
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffset()Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    move-result-object v0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->endOffset:I

    return v0
.end method

.method public getSelectionHandleHeight()I
    .locals 1

    .prologue
    .line 3465
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getWebTextSelectionControls()Landroid/webkitsec/WebTextSelectionControls;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3466
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getWebTextSelectionControls()Landroid/webkitsec/WebTextSelectionControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebTextSelectionControls;->getHandleHeight()I

    move-result v0

    .line 3468
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectionHandleWidth()I
    .locals 1

    .prologue
    .line 3472
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getWebTextSelectionControls()Landroid/webkitsec/WebTextSelectionControls;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3473
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getWebTextSelectionControls()Landroid/webkitsec/WebTextSelectionControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebTextSelectionControls;->getHandleWidth()I

    move-result v0

    .line 3475
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectionOffset()Landroid/webkitsec/HtmlComposerView$SelectionOffset;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 3479
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v3, Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    invoke-direct {v3, v4, v4}, Landroid/webkitsec/HtmlComposerView$SelectionOffset;-><init>(II)V

    .line 3498
    :goto_0
    return-object v3

    .line 3481
    :cond_1
    new-instance v2, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-direct {v2, p0, v5, v5}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3482
    .local v2, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Point;>;"
    monitor-enter v2

    .line 3483
    :try_start_0
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3484
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    const/16 v4, 0x201

    invoke-virtual {v3, v4, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3489
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3494
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3496
    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 3498
    .local v1, "pnt":Landroid/graphics/Point;
    new-instance v3, Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v4, v5}, Landroid/webkitsec/HtmlComposerView$SelectionOffset;-><init>(II)V

    goto :goto_0

    .line 3486
    .end local v1    # "pnt":Landroid/graphics/Point;
    :cond_2
    :try_start_3
    new-instance v3, Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/webkitsec/HtmlComposerView$SelectionOffset;-><init>(II)V

    monitor-exit v2

    goto :goto_0

    .line 3494
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 3490
    :catch_0
    move-exception v0

    .line 3491
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3492
    const-string v3, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getSelectionSec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3229
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionStart()I
    .locals 1

    .prologue
    .line 3502
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffset()Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    move-result-object v0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->startOffset:I

    return v0
.end method

.method public getShiftKeyState()Z
    .locals 1

    .prologue
    .line 4190
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    return v0
.end method

.method public getStateInRichlyEditableText()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 3441
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3457
    :cond_0
    :goto_0
    return v2

    .line 3443
    :cond_1
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v3, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3444
    .local v1, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 3445
    :try_start_0
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3446
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x21e

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3451
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3455
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3457
    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 3448
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 3455
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 3452
    :catch_0
    move-exception v0

    .line 3453
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 3408
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v1

    .line 3409
    .local v1, "text":Ljava/lang/String;
    if-nez v1, :cond_0

    const-string v1, ""

    .line 3410
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 3411
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    aget-char v0, v2, v3

    .line 3412
    .local v0, "chrVal":I
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    const-string v1, ""

    .line 3413
    :cond_1
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getText() Not Null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3415
    .end local v0    # "chrVal":I
    :cond_2
    return-object v1
.end method

.method public getTextAroundCursor(ILandroid/webkitsec/HtmlComposerView$CursorDirection;)Ljava/lang/String;
    .locals 6
    .param p1, "n"    # I
    .param p2, "cursorDirection"    # Landroid/webkitsec/HtmlComposerView$CursorDirection;

    .prologue
    const/4 v3, 0x0

    .line 3419
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3437
    :cond_0
    :goto_0
    return-object v3

    .line 3421
    :cond_1
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    aput-object p2, v1, v4

    .line 3422
    .local v1, "paramArray":[Ljava/lang/Object;
    new-instance v2, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-direct {v2, p0, v1, v3}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3423
    .local v2, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v2

    .line 3424
    :try_start_0
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 3425
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    const/16 v4, 0x1fd

    invoke-virtual {v3, v4, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3430
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3435
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3437
    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    .line 3427
    :cond_2
    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 3435
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 3431
    :catch_0
    move-exception v0

    .line 3432
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3433
    const-string v3, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getWebTextSelectionControls()Landroid/webkitsec/WebTextSelectionControls;
    .locals 1

    .prologue
    .line 3233
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebTextSelectionControls()Landroid/webkitsec/WebTextSelectionControls;

    move-result-object v0

    return-object v0
.end method

.method protected handle_onTouchEvent(IIIII)Z
    .locals 21
    .param p1, "action"    # I
    .param p2, "contentX"    # I
    .param p3, "contentY"    # I
    .param p4, "rawX"    # I
    .param p5, "rawY"    # I

    .prologue
    .line 1693
    packed-switch p1, :pswitch_data_0

    .line 1977
    :cond_0
    :goto_0
    const/16 v18, 0x0

    :goto_1
    return v18

    .line 1695
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/webkitsec/WebViewClassic;->mInActionMove:Z

    .line 1697
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 1698
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->delayedUpdateOutlineDrawRect()V

    .line 1699
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->handle_ACTION_CANCEL()V

    .line 1700
    const/16 v18, 0x1

    goto :goto_1

    .line 1703
    :cond_1
    const/16 v18, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 1704
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    goto :goto_0

    .line 1710
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/webkitsec/WebViewClassic;->mInActionMove:Z

    .line 1712
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 1713
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->imageSelectedX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->imageSelectedY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v10

    .line 1714
    .local v10, "imagerect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    const-string v18, "HtmlComposerView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "     imagerect left ="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " imagerect top  = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " imagerect right = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " imagerect bottom="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    const-string v18, "HtmlComposerView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "     content X ="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " content Y  = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    :cond_3
    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, p2

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move/from16 v0, p2

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, p3

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move/from16 v0, p3

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 1718
    const-string v18, "HtmlComposerView"

    const-string v19, " image is touched and can be moved "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/HtmlComposerView;->isTouchedImage:Z

    .line 1720
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/webkitsec/WebViewClassic;->mInActionMove:Z

    .line 1726
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkitsec/HtmlComposerView;->handle_ACTION_DOWN(IIII)V

    .line 1727
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 1728
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/webkitsec/WebViewClassic;->mInActionMove:Z

    .line 1731
    :cond_4
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->getCurrentOutlineWidth()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/HtmlComposerView;->originalWidth:I

    .line 1732
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->getCurrentOutlineHeight()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/HtmlComposerView;->originalHeight:I

    .line 1734
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->isTouchedImage:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    :cond_5
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1722
    :cond_6
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/HtmlComposerView;->isTouchedImage:Z

    .line 1723
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/webkitsec/WebViewClassic;->mInActionMove:Z

    goto :goto_2

    .line 1740
    .end local v10    # "imagerect":Landroid/graphics/Rect;
    :pswitch_2
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 1741
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    .line 1742
    const/4 v8, 0x0

    .line 1744
    .local v8, "imageHandlerHeight":I
    const/4 v5, 0x0

    .line 1746
    .local v5, "extraTouchArea":I
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v11, v0, [I

    .line 1747
    .local v11, "locOnScreen":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1748
    sget-object v18, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1750
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 1751
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 1752
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->topMiddleHandleEnabled:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->leftTopHandleEnabled:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->rightTopHandleEnabled:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 1753
    :cond_7
    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkitsec/HtmlComposerView;->extraHeightRegionToCover:I

    .line 1758
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    move/from16 v18, v0

    sub-int v18, p4, v18

    sget-object v19, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v20

    add-int v19, v19, v20

    const/16 v20, 0x0

    aget v20, v11, v20

    add-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_c

    .line 1759
    sget-object v18, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v19

    add-int v18, v18, v19

    const/16 v19, 0x0

    aget v19, v11, v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    move/from16 v19, v0

    add-int v18, v18, v19

    sub-int v18, v18, p4

    add-int p2, p2, v18

    .line 1760
    sget-object v18, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v19

    add-int v18, v18, v19

    const/16 v19, 0x0

    aget v19, v11, v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    move/from16 v19, v0

    add-int p4, v18, v19

    .line 1766
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    move/from16 v18, v0

    sub-int v18, p5, v18

    sget-object v19, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v20

    sub-int v19, v19, v20

    const/16 v20, 0x1

    aget v20, v11, v20

    add-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_d

    .line 1767
    sget-object v18, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v19

    sub-int v18, v18, v19

    const/16 v19, 0x1

    aget v19, v11, v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    move/from16 v19, v0

    add-int v18, v18, v19

    sub-int v18, v18, p5

    add-int p3, p3, v18

    .line 1768
    sget-object v18, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v19

    sub-int v18, v18, v19

    const/16 v19, 0x1

    aget v19, v11, v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    move/from16 v19, v0

    add-int p5, v18, v19

    .line 1774
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    move/from16 v18, v0

    sub-int v18, p2, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/HtmlComposerView;->mContentX:I

    .line 1775
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    move/from16 v18, v0

    sub-int v18, p3, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    .line 1776
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->handle_ACTION_MOVE(II)V

    .line 1777
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1779
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1755
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 1761
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    move/from16 v18, v0

    sub-int v18, p4, v18

    sget-object v19, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v20

    sub-int v19, v19, v20

    const/16 v20, 0x0

    aget v20, v11, v20

    add-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_9

    .line 1762
    sget-object v18, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v19

    sub-int v18, v18, v19

    const/16 v19, 0x0

    aget v19, v11, v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    move/from16 v19, v0

    add-int v18, v18, v19

    sub-int v18, v18, p4

    add-int p2, p2, v18

    .line 1763
    sget-object v18, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v19

    sub-int v18, v18, v19

    const/16 v19, 0x0

    aget v19, v11, v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorX:I

    move/from16 v19, v0

    add-int p4, v18, v19

    goto/16 :goto_4

    .line 1769
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    move/from16 v18, v0

    sub-int v18, p5, v18

    sget-object v19, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v20

    add-int v19, v19, v20

    const/16 v20, 0x1

    aget v20, v11, v20

    add-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_a

    .line 1770
    sget-object v18, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v19

    add-int v18, v18, v19

    const/16 v19, 0x1

    aget v19, v11, v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    move/from16 v19, v0

    add-int v18, v18, v19

    sub-int v18, v18, p5

    add-int p3, p3, v18

    .line 1771
    sget-object v18, Landroid/webkitsec/HtmlComposerView;->mGVR:Landroid/graphics/Rect;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v19

    add-int v18, v18, v19

    const/16 v19, 0x1

    aget v19, v11, v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mConversionFactorY:I

    move/from16 v19, v0

    add-int p5, v18, v19

    goto/16 :goto_5

    .line 1780
    .end local v5    # "extraTouchArea":I
    .end local v8    # "imageHandlerHeight":I
    .end local v11    # "locOnScreen":[I
    :cond_e
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->isTouchedImage:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 1782
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v18

    if-eqz v18, :cond_f

    .line 1783
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v18

    const/16 v19, 0x21c

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    .line 1785
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, p2

    move/from16 v1, v18

    if-lt v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move/from16 v0, p2

    move/from16 v1, v18

    if-gt v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, p3

    move/from16 v1, v18

    if-lt v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mImageRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move/from16 v0, p3

    move/from16 v1, v18

    if-le v0, v1, :cond_11

    .line 1786
    :cond_10
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/HtmlComposerView;->imageCanbeMoved:Z

    .line 1787
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/webkitsec/WebViewClassic;->mInActionMove:Z

    .line 1790
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1792
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1799
    :pswitch_3
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    .line 1800
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/webkitsec/WebSettingsClassic;->getEditableSupport()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1801
    const-string v18, "HtmlComposerView"

    const-string/jumbo v19, "making selection set to true"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 1804
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestFocus()Z

    .line 1805
    const/16 v18, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->getComposingState()Z

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_12

    .line 1806
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView;->setComposingState(Z)V

    .line 1807
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 1811
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1814
    :cond_12
    const/16 v18, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->getCursorPressed()Z

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_13

    .line 1816
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 1819
    :cond_13
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v14

    .line 1821
    .local v14, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    move/from16 v18, v0

    if-nez v18, :cond_16

    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_16

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_16

    .line 1824
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->getSelectedImageUri()Ljava/lang/String;

    move-result-object v9

    .line 1826
    .local v9, "imageUri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_15

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;->onIsSAMMFile(Ljava/lang/String;)Z

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_15

    .line 1828
    const-string v18, "HtmlComposerView"

    const-string v19, "ACTION_UP: Is a SAMM File"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    .line 1831
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1833
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 1835
    .local v12, "msg":Landroid/os/Message;
    const/16 v18, 0x502

    move/from16 v0, v18

    iput v0, v12, Landroid/os/Message;->what:I

    .line 1836
    iput-object v9, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1838
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    move-object/from16 v18, v0

    if-eqz v18, :cond_14

    .line 1839
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1842
    :cond_14
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1844
    .end local v12    # "msg":Landroid/os/Message;
    :cond_15
    const-string v18, "HtmlComposerView"

    const-string v19, "ACTION_UP: Is not a SAMM File"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Landroid/webkitsec/HtmlComposerView;->outlineDrawRect(Landroid/content/Context;Landroid/graphics/Rect;)V

    .line 1849
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 1851
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1853
    .end local v9    # "imageUri":Ljava/lang/String;
    :cond_16
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 1854
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/webkitsec/WebViewClassic;->mInActionMove:Z

    .line 1856
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_17

    .line 1857
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->handle_ACTION_UP(II)V

    .line 1858
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1863
    :cond_17
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->getCurrentOutlineWidth()I

    move-result v7

    .line 1864
    .local v7, "finalWidth":I
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->getCurrentOutlineHeight()I

    move-result v6

    .line 1866
    .local v6, "finalHeight":I
    const/4 v15, 0x0

    .line 1867
    .local v15, "sameImageFlag":Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->imageSelectedX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->imageSelectedY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v13

    .line 1869
    .local v13, "oldImageRect":Landroid/graphics/Rect;
    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_18

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_18

    .line 1870
    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_18

    iget v0, v13, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    iget v0, v14, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_18

    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_18

    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_18

    .line 1872
    const/4 v15, 0x1

    .line 1875
    :cond_18
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1f

    .line 1876
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->originalWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v7, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->originalHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v6, :cond_19

    .line 1877
    const-string v18, "HtmlComposerView"

    const-string v19, "Image isn\'t going to resize "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    :goto_6
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1879
    :cond_19
    const-string v18, "HtmlComposerView"

    const-string v19, "doResizeImage called - Image is going to resize "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->imageSelectedX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->imageSelectedY:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v17

    .line 1883
    .local v17, "selectedImgRect":Landroid/graphics/Rect;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1d

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1d

    .line 1884
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->originalWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v7, :cond_1a

    mul-int/lit8 v18, v6, 0x64

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x41200000    # 10.0f

    cmpl-float v18, v18, v19

    if-gez v18, :cond_1c

    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->originalHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v6, :cond_1b

    mul-int/lit8 v18, v7, 0x64

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x41200000    # 10.0f

    cmpl-float v18, v18, v19

    if-gez v18, :cond_1c

    :cond_1b
    mul-int/lit8 v18, v7, 0x64

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x41200000    # 10.0f

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_1e

    mul-int/lit8 v18, v6, 0x64

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x41200000    # 10.0f

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_1e

    .line 1887
    :cond_1c
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v6}, Landroid/webkitsec/HtmlComposerView;->doResizeImage(II)V

    .line 1888
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1890
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->delayedUpdateOutlineDrawRect()V

    .line 1896
    :cond_1d
    :goto_7
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    .line 1897
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/HtmlComposerView;->isTouchedImage:Z

    .line 1899
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    goto/16 :goto_6

    .line 1892
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->outlineDrawRect(Landroid/content/Context;Landroid/graphics/Rect;)V

    goto :goto_7

    .line 1905
    .end local v17    # "selectedImgRect":Landroid/graphics/Rect;
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->imageCanbeResized:Z

    move/from16 v18, v0

    if-nez v18, :cond_20

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->imageCanbeMoved:Z

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_20

    .line 1906
    const-string v18, "InsertHTML"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/webkitsec/HtmlComposerView;->insertImageContent(Ljava/lang/String;)V

    .line 1908
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1909
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/HtmlComposerView;->imageCanbeMoved:Z

    .line 1910
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    .line 1911
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    .line 1912
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/HtmlComposerView;->isTouchedImage:Z

    .line 1914
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->clearSelection()V

    .line 1916
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 1918
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1921
    :cond_20
    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, p2

    move/from16 v1, v18

    if-lt v0, v1, :cond_21

    iget v0, v14, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move/from16 v0, p2

    move/from16 v1, v18

    if-gt v0, v1, :cond_21

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, p3

    move/from16 v1, v18

    if-lt v0, v1, :cond_21

    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move/from16 v0, p3

    move/from16 v1, v18

    if-le v0, v1, :cond_23

    .line 1922
    :cond_21
    const-string v18, "HtmlComposerView"

    const-string v19, "User taps outside of an image rect. We will release the selection"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->isCursorAtBoundary(II)I

    move-result v18

    if-nez v18, :cond_22

    .line 1925
    const-string v18, "HtmlComposerView"

    const-string v19, "Boundary is not touched"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 1928
    :cond_22
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1932
    :cond_23
    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_27

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_27

    if-nez v15, :cond_27

    .line 1934
    const-string v18, "HtmlComposerView"

    const-string v19, "A other image is selected."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->getImageSize(II)Landroid/graphics/Rect;

    move-result-object v16

    .line 1938
    .local v16, "selectedImageRect":Landroid/graphics/Rect;
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->getSelectedImageUri()Ljava/lang/String;

    move-result-object v9

    .line 1939
    .restart local v9    # "imageUri":Ljava/lang/String;
    const-string v18, "HtmlComposerView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Selected Image\'s url = ["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_25

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;->onIsSAMMFile(Ljava/lang/String;)Z

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_25

    .line 1942
    const-string v18, "HtmlComposerView"

    const-string v19, "ACTION_UP: Is a SAMM File"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    .line 1945
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1947
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 1948
    .restart local v12    # "msg":Landroid/os/Message;
    const/16 v18, 0x502

    move/from16 v0, v18

    iput v0, v12, Landroid/os/Message;->what:I

    .line 1949
    iput-object v9, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1951
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    move-object/from16 v18, v0

    if-eqz v18, :cond_24

    .line 1952
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1955
    :cond_24
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1957
    .end local v12    # "msg":Landroid/os/Message;
    :cond_25
    const-string v18, "HtmlComposerView"

    const-string v19, "ACTION_UP: Is not a SAMM File"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_26

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_26

    .line 1962
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView;->updateOutlineDrawRect(Landroid/graphics/Rect;)V

    .line 1964
    :cond_26
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1967
    .end local v9    # "imageUri":Ljava/lang/String;
    .end local v16    # "selectedImageRect":Landroid/graphics/Rect;
    :cond_27
    iget v0, v14, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    iget v0, v14, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v15, v0, :cond_0

    .line 1968
    const-string v18, "HtmlComposerView"

    const-string v19, "The current selected image is tapped."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 1693
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public hideInsertionController()V
    .locals 0

    .prologue
    .line 3510
    return-void
.end method

.method public htmlLength()I
    .locals 1

    .prologue
    .line 3513
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getHTML()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public initComposerState()V
    .locals 1

    .prologue
    .line 3517
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getComposingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3518
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 3519
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3521
    :cond_0
    return-void
.end method

.method initImageResizeControls(Landroid/content/Context;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imagetRect1"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, -0x1

    .line 5095
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    .line 5096
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    .line 5098
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->imgHeight:F

    .line 5099
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->imgWidth:F

    .line 5100
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->extraRegiontoCover:I

    .line 5101
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    .line 5102
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->leftTopCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->rightTopCropHandler:Landroid/graphics/Rect;

    .line 5103
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    .line 5104
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->leftBottomCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->rightBottomCropHandler:Landroid/graphics/Rect;

    .line 5106
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->imageSelectedX:I

    .line 5107
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->imageSelectedY:I

    .line 5109
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    div-int/lit8 v1, v3, 0x2

    .line 5110
    .local v1, "xCenter":I
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    div-int/lit8 v2, v3, 0x2

    .line 5111
    .local v2, "yCenter":I
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int v5, v2, v5

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v6, v7

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v7, v2

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    .line 5112
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->leftMiddleCropHandler:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->rightMiddleCropHandler:Landroid/graphics/Rect;

    .line 5113
    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int v4, v1, v4

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v6, v1

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    .line 5114
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->topMiddleCropHandler:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->imagetRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->widthOfHandle:I

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->bottomMiddleCropHandler:Landroid/graphics/Rect;

    .line 5116
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    .line 5118
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    .line 5120
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndCreateOutlinePath()V

    .line 5121
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->resetAndRecreateHandlesPath()V

    .line 5122
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_OutLine:Landroid/graphics/Region;

    .line 5123
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LT:Landroid/graphics/Region;

    .line 5124
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LB:Landroid/graphics/Region;

    .line 5125
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RT:Landroid/graphics/Region;

    .line 5126
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RB:Landroid/graphics/Region;

    .line 5128
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_TM:Landroid/graphics/Region;

    .line 5129
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_LM:Landroid/graphics/Region;

    .line 5130
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_RM:Landroid/graphics/Region;

    .line 5131
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->region_rect_BM:Landroid/graphics/Region;

    .line 5133
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->updateRegions()V

    .line 5135
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 5136
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mTouchSlop:I

    .line 5138
    iput v9, p0, Landroid/webkitsec/HtmlComposerView;->mContentX:I

    .line 5139
    iput v9, p0, Landroid/webkitsec/HtmlComposerView;->mContentY:I

    .line 5140
    return-void
.end method

.method public insertContent(Ljava/lang/CharSequence;Landroid/webkitsec/HtmlComposerView$InsertionPosition;)Z
    .locals 4
    .param p1, "contentFragment"    # Ljava/lang/CharSequence;
    .param p2, "pos"    # Landroid/webkitsec/HtmlComposerView$InsertionPosition;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 3524
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v0

    .line 3526
    .local v0, "selectionType":I
    sget-object v2, Landroid/webkitsec/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkitsec/HtmlComposerView$InsertionPosition;

    if-ne p2, v2, :cond_1

    .line 3527
    const-string v2, "MoveToBeginningOfDocument"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3532
    :cond_0
    :goto_0
    const-string v2, "InsertHTML"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x0

    .line 3542
    :goto_1
    return v1

    .line 3529
    :cond_1
    sget-object v2, Landroid/webkitsec/HtmlComposerView$InsertionPosition;->INSERT_AT_END:Landroid/webkitsec/HtmlComposerView$InsertionPosition;

    if-ne p2, v2, :cond_0

    .line 3530
    const-string v2, "MoveToEndOfDocument"

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 3535
    :cond_2
    if-ne v1, v0, :cond_3

    .line 3536
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 3540
    :goto_2
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto :goto_1

    .line 3538
    :cond_3
    invoke-virtual {p0, v1}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_2
.end method

.method public insertImage(Ljava/lang/String;IIZ)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "widthInPixel"    # I
    .param p3, "heightInPixel"    # I
    .param p4, "bEditing"    # Z

    .prologue
    .line 3584
    const/4 v0, 0x1

    if-ne v0, p4, :cond_1

    .line 3585
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffsetImage()V

    .line 3586
    const-string v0, "Delete"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3587
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebView;->clearCache(Z)V

    .line 3588
    if-eqz p1, :cond_0

    .line 3589
    invoke-virtual {p0, p1, p2, p3}, Landroid/webkitsec/HtmlComposerView;->insertImage(Ljava/lang/String;II)Z

    .line 3592
    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->resetSelection()V

    .line 3596
    :goto_0
    return-void

    .line 3594
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/webkitsec/HtmlComposerView;->insertImage(Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method public insertImage(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bEditing"    # Z

    .prologue
    .line 3636
    const/4 v0, 0x1

    if-ne v0, p2, :cond_1

    .line 3637
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffsetImage()V

    .line 3638
    const-string v0, "Delete"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3639
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebView;->clearCache(Z)V

    .line 3640
    if-eqz p1, :cond_0

    .line 3641
    invoke-virtual {p0, p1}, Landroid/webkitsec/HtmlComposerView;->insertImage(Ljava/lang/String;)Z

    .line 3644
    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->resetSelection()V

    .line 3648
    :goto_0
    return-void

    .line 3646
    :cond_1
    invoke-virtual {p0, p1}, Landroid/webkitsec/HtmlComposerView;->insertImage(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public insertImage(Ljava/lang/String;)Z
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3600
    if-nez p1, :cond_1

    .line 3625
    :cond_0
    :goto_0
    return v2

    .line 3602
    :cond_1
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 3604
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v1

    .line 3606
    .local v1, "selectionType":I
    new-instance v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<img src="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " />"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3607
    .local v0, "imgMarkup":Ljava/lang/String;
    const-string v4, "InsertHTML"

    invoke-virtual {p0, v4, v0}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3614
    if-ne v3, v1, :cond_2

    .line 3615
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 3619
    :goto_1
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3622
    const-string v2, "image inserted"

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 3623
    const v2, 0x102040a

    sput v2, Landroid/webkitsec/HtmlComposerView;->operSel:I

    move v2, v3

    .line 3625
    goto :goto_0

    .line 3617
    :cond_2
    invoke-virtual {p0, v3}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_1
.end method

.method public insertImage(Ljava/lang/String;II)Z
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "widthInPixel"    # I
    .param p3, "heightInPixel"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3546
    if-nez p1, :cond_1

    .line 3571
    :cond_0
    :goto_0
    return v2

    .line 3548
    :cond_1
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 3550
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v1

    .line 3552
    .local v1, "selectionType":I
    new-instance v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<img src="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " />"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3553
    .local v0, "imgMarkup":Ljava/lang/String;
    const-string v4, "InsertHTML"

    invoke-virtual {p0, v4, v0}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3560
    if-ne v3, v1, :cond_2

    .line 3561
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 3565
    :goto_1
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3568
    const-string v2, "image inserted"

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 3569
    const v2, 0x102040a

    sput v2, Landroid/webkitsec/HtmlComposerView;->operSel:I

    move v2, v3

    .line 3571
    goto :goto_0

    .line 3563
    :cond_2
    invoke-virtual {p0, v3}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_1
.end method

.method public insertOrderedList()V
    .locals 2

    .prologue
    .line 2198
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2199
    const-string v0, "InsertOrderedList"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2200
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2201
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2202
    return-void
.end method

.method public insertSubscript()V
    .locals 2

    .prologue
    .line 2211
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2212
    const-string v0, "Superscript"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2213
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2214
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2215
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->selectedImageOutlineRectUpdate()V

    .line 2216
    return-void
.end method

.method public insertSuperscript()V
    .locals 2

    .prologue
    .line 2219
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2220
    const-string v0, "Subscript"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2221
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2222
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2223
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->selectedImageOutlineRectUpdate()V

    .line 2224
    return-void
.end method

.method public insertTextContent(Ljava/lang/String;IZLjava/util/Vector;)Landroid/webkitsec/HtmlComposerView$SelectionOffset;
    .locals 5
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "newCursorPosition"    # I
    .param p3, "composing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/Vector",
            "<",
            "Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;",
            ">;)",
            "Landroid/webkitsec/HtmlComposerView$SelectionOffset;"
        }
    .end annotation

    .prologue
    .local p4, "spanData":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;>;"
    const/4 v3, -0x1

    .line 3653
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    invoke-direct {v2, v3, v3}, Landroid/webkitsec/HtmlComposerView$SelectionOffset;-><init>(II)V

    .line 3674
    :goto_0
    return-object v2

    .line 3655
    :cond_1
    new-instance v1, Landroid/webkitsec/WebViewCore$EditableParams;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Landroid/webkitsec/WebViewCore$EditableParams;-><init>(Landroid/webkitsec/WebViewCore;)V

    .line 3656
    .local v1, "editableParams":Landroid/webkitsec/WebViewCore$EditableParams;
    iput-object p1, v1, Landroid/webkitsec/WebViewCore$EditableParams;->content:Ljava/lang/String;

    .line 3657
    iput p2, v1, Landroid/webkitsec/WebViewCore$EditableParams;->newCursorPosition:I

    .line 3658
    iput-boolean p3, v1, Landroid/webkitsec/WebViewCore$EditableParams;->composing:Z

    .line 3659
    iput-object p4, v1, Landroid/webkitsec/WebViewCore$EditableParams;->spanData:Ljava/util/Vector;

    .line 3661
    monitor-enter v1

    .line 3662
    :try_start_0
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3663
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x218

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3668
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3672
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3674
    new-instance v2, Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    iget v3, v1, Landroid/webkitsec/WebViewCore$EditableParams;->startOffset:I

    iget v4, v1, Landroid/webkitsec/WebViewCore$EditableParams;->endOffset:I

    invoke-direct {v2, v3, v4}, Landroid/webkitsec/HtmlComposerView$SelectionOffset;-><init>(II)V

    goto :goto_0

    .line 3665
    :cond_2
    :try_start_3
    new-instance v2, Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/webkitsec/HtmlComposerView$SelectionOffset;-><init>(II)V

    monitor-exit v1

    goto :goto_0

    .line 3672
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 3669
    :catch_0
    move-exception v0

    .line 3670
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public insertUnorderedList()V
    .locals 2

    .prologue
    .line 2205
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2206
    const-string v0, "InsertUnorderedList"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2207
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2208
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2209
    return-void
.end method

.method public invokeTexttoSpeech(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x0

    .line 3679
    const/4 v1, 0x0

    .local v1, "beforeStr":Ljava/lang/String;
    const/4 v0, 0x0

    .line 3681
    .local v0, "aftStr":Ljava/lang/String;
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "HtmlComposerView"

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3683
    :cond_0
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 3685
    :cond_1
    const-string v2, ""

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 3688
    :cond_2
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 3690
    :cond_3
    const-string v2, ""

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 3693
    :cond_4
    const v2, 0x1020022

    if-ne p1, v2, :cond_a

    .line 3695
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebClipboard;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 3697
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebClipboard;->getText()Ljava/lang/String;

    move-result-object v0

    .line 3707
    :goto_0
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 3708
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "paste operations "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3711
    :cond_5
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 3747
    :cond_6
    :goto_1
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2, v0}, Landroid/webkitsec/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    .line 3748
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2, v1}, Landroid/webkitsec/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    .line 3749
    if-eqz v0, :cond_f

    .line 3750
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->textToSpeech(II)V

    .line 3753
    :goto_2
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/webkitsec/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    .line 3754
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/webkitsec/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    .line 3755
    sput v5, Landroid/webkitsec/HtmlComposerView;->operSel:I

    .line 3756
    :cond_7
    :goto_3
    return-void

    .line 3701
    :cond_8
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3702
    const-string v0, "Images inserted"

    goto :goto_0

    .line 3704
    :cond_9
    const-string v0, "Images"

    goto :goto_0

    .line 3713
    :cond_a
    const v2, 0x1020020

    if-ne p1, v2, :cond_b

    .line 3715
    const-string v0, ""

    .line 3716
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    goto :goto_1

    .line 3718
    :cond_b
    const v2, 0x1020408

    if-ne p1, v2, :cond_c

    .line 3720
    const-string v0, ""

    .line 3721
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 3723
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    .line 3726
    :cond_c
    const v2, 0x102040a

    if-ne p1, v2, :cond_d

    .line 3728
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->clpBrdStrg:Ljava/lang/String;

    .line 3729
    const-string v1, ""

    goto :goto_1

    .line 3731
    :cond_d
    const/16 v2, 0xf

    if-ne p1, v2, :cond_7

    .line 3734
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v0

    .line 3736
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_e

    .line 3737
    const-string v2, "HtmlComposerView"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3740
    :cond_e
    const-string v1, ""

    goto :goto_1

    .line 3752
    :cond_f
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v5, v2}, Landroid/webkitsec/HtmlComposerView;->textToSpeech(II)V

    goto :goto_2
.end method

.method public isAccessibilitySelectionExtendable()Z
    .locals 1

    .prologue
    .line 1116
    const/4 v0, 0x1

    return v0
.end method

.method public isBodyEmpty()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 3758
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3776
    :cond_0
    :goto_0
    return v3

    .line 3760
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3761
    .local v0, "bodyEmpty":Ljava/lang/Boolean;
    new-instance v2, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v0}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3762
    .local v2, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v2

    .line 3763
    :try_start_0
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 3764
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    const/16 v4, 0x212

    invoke-virtual {v3, v4, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3769
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3774
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3776
    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 3766
    :cond_2
    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 3774
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 3770
    :catch_0
    move-exception v1

    .line 3771
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3772
    const-string v3, "HtmlComposerView"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public isComposerImageTouched()Z
    .locals 1

    .prologue
    .line 6397
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    return v0
.end method

.method public isInActionMove()Z
    .locals 1

    .prologue
    .line 3192
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-boolean v0, v0, Landroid/webkitsec/WebViewClassic;->mInActionMove:Z

    return v0
.end method

.method public isInputMethodTarget()Z
    .locals 2

    .prologue
    .line 3784
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3785
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInsertionControllerShowing()Z
    .locals 1

    .prologue
    .line 3506
    const/4 v0, 0x0

    return v0
.end method

.method public isMagnifierVisible()Z
    .locals 1

    .prologue
    .line 3789
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mMagnifier:Landroid/webkitsec/WebMagnifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mMagnifier:Landroid/webkitsec/WebMagnifier;

    iget-boolean v0, v0, Landroid/webkitsec/WebMagnifier;->mbShow:Z

    if-eqz v0, :cond_0

    .line 3790
    const/4 v0, 0x1

    .line 3792
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectionHandleShown()Z
    .locals 1

    .prologue
    .line 3796
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    return v0
.end method

.method public isTouchedOutside(II)Z
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x0

    .line 3237
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v6

    if-nez v6, :cond_1

    .line 3259
    :cond_0
    :goto_0
    return v5

    .line 3239
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 3241
    .local v3, "rect":Landroid/graphics/Rect;
    const/4 v6, 0x2

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v6

    .line 3243
    .local v2, "paramArray":[Ljava/lang/Object;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 3244
    .local v1, "isOutside":Ljava/lang/Boolean;
    new-instance v4, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    invoke-direct {v4, p0, v2, v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3246
    .local v4, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v4

    .line 3247
    :try_start_0
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 3248
    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v5

    const/16 v6, 0x22e

    invoke-virtual {v5, v6, v4}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3253
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3258
    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3259
    invoke-virtual {v4}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_0

    .line 3250
    :cond_2
    :try_start_3
    monitor-exit v4

    goto :goto_0

    .line 3258
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 3254
    :catch_0
    move-exception v0

    .line 3255
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v5, "HtmlComposerView"

    const-string v6, "Caught exception while waiting for overrideUrl"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3256
    const-string v5, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public isVisibleCursorHandler(I)V
    .locals 5
    .param p1, "event"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2083
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVisibleCursorHandler : event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    packed-switch p1, :pswitch_data_0

    .line 2132
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2087
    :pswitch_1
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_0

    .line 2088
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;->show()V

    .line 2089
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    goto :goto_0

    .line 2093
    :pswitch_2
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->mSCHMoveFlag:Z

    goto :goto_0

    .line 2096
    :pswitch_3
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;->isShowing()Z

    move-result v0

    if-ne v3, v0, :cond_0

    .line 2098
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;->hide()V

    .line 2099
    iput-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    goto :goto_0

    .line 2103
    :pswitch_4
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;->isShowing()Z

    move-result v0

    if-ne v3, v0, :cond_1

    .line 2104
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    if-ne v3, v0, :cond_0

    .line 2105
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;->hide()V

    .line 2106
    iput-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    goto :goto_0

    .line 2109
    :cond_1
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mSCHMoveFlag:Z

    if-ne v0, v3, :cond_2

    .line 2110
    iput-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->mSCHMoveFlag:Z

    goto :goto_0

    .line 2112
    :cond_2
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->createToolTip()V

    goto :goto_0

    .line 2118
    :pswitch_5
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    if-nez v0, :cond_3

    .line 2119
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->createToolTip()V

    goto :goto_0

    .line 2123
    :cond_3
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2124
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mToolTipMenu:Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$ActionPopupWindow;->show()V

    .line 2125
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->mIsSCHMenu:Z

    goto :goto_0

    .line 2085
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public isVisibleCursorhandlerListener(Landroid/webkitsec/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;)V
    .locals 0
    .param p1, "mCursorHandlerListener"    # Landroid/webkitsec/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;

    .prologue
    .line 3264
    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkitsec/HtmlComposerViewUtils$HtmlComposerViewCursorHandlerListener;

    .line 3265
    return-void
.end method

.method public length()I
    .locals 1

    .prologue
    .line 3800
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public loadHtmlFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "htmlFilePath"    # Ljava/lang/String;

    .prologue
    .line 3804
    invoke-direct {p0, p1}, Landroid/webkitsec/HtmlComposerView;->getLoadableContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3806
    .local v0, "data":Ljava/lang/String;
    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 3807
    return-void
.end method

.method public moveCursorBegining()V
    .locals 2

    .prologue
    .line 3810
    const-string v0, "MoveToBeginningOfDocument"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3811
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 3812
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 3813
    return-void
.end method

.method public moveCursorEnd()V
    .locals 2

    .prologue
    .line 3816
    const-string v0, "MoveToEndOfDocument"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3817
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 3818
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 3819
    return-void
.end method

.method public moveCursorSelectionToBeginningOfDocument()V
    .locals 2

    .prologue
    .line 3828
    const-string v0, "MoveToBeginningOfDocumentAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3829
    return-void
.end method

.method public moveCursorSelectionToBeginningOfLine()V
    .locals 2

    .prologue
    .line 3832
    const-string v0, "MoveToBeginningOfLineAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3833
    return-void
.end method

.method public moveCursorSelectionToEndOfDocument()V
    .locals 2

    .prologue
    .line 3836
    const-string v0, "MoveToEndOfDocumentAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3837
    return-void
.end method

.method public moveCursorSelectionToEndOfLine()V
    .locals 2

    .prologue
    .line 3840
    const-string v0, "MoveToRightEndOfLineAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3841
    return-void
.end method

.method public moveCursorSelectionToPageDown()V
    .locals 2

    .prologue
    .line 3866
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 3867
    const-string v0, "MovePageDownAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3868
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3869
    return-void
.end method

.method public moveCursorSelectionToPageUp()V
    .locals 2

    .prologue
    .line 3872
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 3873
    const-string v0, "MovePageUpAndModifySelection"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3874
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3875
    return-void
.end method

.method public moveCursorToBeginningOfLine()V
    .locals 2

    .prologue
    .line 3844
    const-string v0, "MoveToBeginningOfLine"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3845
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 3846
    return-void
.end method

.method public moveCursorToEndOfLine()V
    .locals 2

    .prologue
    .line 3849
    const-string v0, "MoveToEndOfLine"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3850
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 3851
    return-void
.end method

.method public moveCursorToPageDown()V
    .locals 2

    .prologue
    .line 3854
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 3855
    const-string v0, "MovePageDown"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3856
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3857
    return-void
.end method

.method public moveCursorToPageUp()V
    .locals 2

    .prologue
    .line 3860
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 3861
    const-string v0, "MovePageUp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3862
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 3863
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 515
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 517
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    if-nez v1, :cond_0

    .line 518
    new-instance v1, Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/webkitsec/HtmlComposerView$StylusEventListener;-><init>(Landroid/webkitsec/HtmlComposerView;Landroid/webkitsec/HtmlComposerView$1;)V

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    .line 519
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewTreeObserver;->addOnStylusButtonEventListener(Landroid/content/Context;Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;)V

    .line 522
    :cond_0
    invoke-super {p0}, Landroid/webkitsec/WebView;->onAttachedToWindow()V

    .line 523
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 1155
    const/4 v0, 0x1

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    .line 1140
    invoke-super {p0, p1}, Landroid/webkitsec/WebView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1141
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget v2, v2, Landroid/webkitsec/WebViewClassic;->maxArrayLimit:I

    new-array v2, v2, [I

    iput-object v2, v1, Landroid/webkitsec/WebViewClassic;->composerContentHeightArray:[I

    .line 1142
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v0

    .line 1143
    .local v0, "selectionType":I
    if-ne v3, v0, :cond_1

    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-nez v1, :cond_1

    .line 1145
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mHCVSelectionChangedCallback:Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

    if-eqz v1, :cond_0

    .line 1146
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mHCVSelectionChangedCallback:Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHCVSelectionChangedCallback:Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

    invoke-interface {v1, v3}, Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;->onSelectionChanged(I)V

    .line 1148
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    .line 1151
    :cond_1
    return-void
.end method

.method public onContextMenuItem(I)Z
    .locals 9
    .param p1, "id"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 559
    iput-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    .line 561
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->hideInsertionController()V

    .line 563
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v3}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 565
    sparse-switch p1, :sswitch_data_0

    .line 715
    :cond_0
    :goto_0
    return v4

    .line 569
    :sswitch_0
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->DoClearImageSelection()V

    .line 571
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->mByHWKeyCommand:Z

    if-ne v5, v3, :cond_1

    .line 572
    iput-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->mByHWKeyCommand:Z

    .line 573
    iput-boolean v4, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    .line 577
    :goto_1
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->selectAllSec()Z

    .line 579
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v4, v3, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    .line 580
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    :goto_2
    iput v3, v6, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    .line 581
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v7, v3, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 582
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v7, v3, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    .line 583
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v3}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 585
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->displaySoftKeyboardForHtmlComposer()V

    .line 586
    invoke-virtual {p0, v4}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 587
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    move v4, v5

    .line 588
    goto :goto_0

    .line 575
    :cond_1
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    goto :goto_1

    :cond_2
    move v3, v4

    .line 580
    goto :goto_2

    .line 592
    :sswitch_1
    invoke-virtual {p0, v5}, Landroid/webkitsec/HtmlComposerView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 593
    .local v0, "cursurRect":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 595
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/webkitsec/WebViewClassic;->setTextSelecitonManualAtContentPoint(II)Z

    .line 596
    invoke-virtual {p0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 598
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->displaySoftKeyboardForHtmlComposer()V

    move v4, v5

    .line 599
    goto :goto_0

    .line 602
    .end local v0    # "cursurRect":Landroid/graphics/Rect;
    :sswitch_2
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectedText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 603
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 604
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->cut()V

    .line 605
    invoke-virtual {p0, v5}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    .line 606
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 607
    const v3, 0x1020020

    sput v3, Landroid/webkitsec/HtmlComposerView;->operSel:I

    .line 608
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v7, v3, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 609
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v7, v3, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    .line 610
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v3}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 612
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-eqz v3, :cond_3

    .line 614
    const-string v3, "HtmlComposerView"

    const-string v4, "HtmlComposerView  --- Calling cleaselection "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    .line 616
    const-string v3, " image "

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 617
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/webkitsec/HtmlComposerView;->setEditableSelection(II)V

    .line 618
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iput-object v6, v3, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    :cond_3
    move v4, v5

    .line 620
    goto/16 :goto_0

    .line 623
    :sswitch_3
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 625
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->selectAllSec()Z

    .line 626
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 627
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->cut()V

    .line 628
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 629
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v7, v3, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 630
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v7, v3, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    .line 631
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v3}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 632
    const v3, 0x1020408

    sput v3, Landroid/webkitsec/HtmlComposerView;->operSel:I

    .line 634
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-eqz v3, :cond_4

    .line 636
    const-string v3, "HtmlComposerView"

    const-string v4, "HtmlComposerView  --- Calling cleaselection "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    .line 638
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/webkitsec/HtmlComposerView;->setEditableSelection(II)V

    .line 639
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iput-object v6, v3, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    .line 640
    const-string v3, " images "

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    :cond_4
    move v4, v5

    .line 643
    goto/16 :goto_0

    .line 646
    :sswitch_4
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->copy()V

    .line 647
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->isSelectionHandleShown()Z

    move-result v3

    if-ne v5, v3, :cond_5

    .line 648
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->setCursorFromRangeSelection()V

    .line 650
    :cond_5
    invoke-virtual {p0, v4}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 651
    invoke-virtual {p0, v4}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    move v4, v5

    .line 652
    goto/16 :goto_0

    .line 657
    :sswitch_5
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->selectAllSec()Z

    .line 659
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->copy()V

    .line 660
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->setCursorFromRangeSelection()V

    move v4, v5

    .line 662
    goto/16 :goto_0

    .line 665
    :sswitch_6
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebClipboard;->getHTMLForCheckingSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/webkitsec/HtmlComposerView;->isInsertionAllowed(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 667
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v8, 0x1040bf5

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v8, 0x1040bf6

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 668
    goto/16 :goto_0

    .line 670
    :cond_6
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectedText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 672
    const-string v3, ""

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 675
    :cond_7
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v2

    .line 677
    .local v2, "selectionType":I
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->paste()V

    .line 679
    if-ne v5, v2, :cond_8

    .line 680
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 684
    :goto_3
    const v3, 0x1020022

    sput v3, Landroid/webkitsec/HtmlComposerView;->operSel:I

    move v4, v5

    .line 685
    goto/16 :goto_0

    .line 682
    :cond_8
    invoke-virtual {p0, v5}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_3

    .line 693
    .end local v2    # "selectionType":I
    :sswitch_7
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mPasteListener:Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

    invoke-virtual {v3, v4}, Landroid/webkitsec/WebClipboard;->setPasteListener(Landroid/webkitsec/WebClipboard$OnPasteFromSelectionUIListener;)V

    .line 694
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebClipboard;->launchClipboardUI()V

    move v4, v5

    .line 695
    goto/16 :goto_0

    .line 698
    :sswitch_8
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->DoClearImageSelection()V

    .line 699
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->undo()V

    .line 700
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    move v4, v5

    .line 701
    goto/16 :goto_0

    .line 704
    :sswitch_9
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->redo()V

    .line 705
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    move v4, v5

    .line 706
    goto/16 :goto_0

    .line 709
    :sswitch_a
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 710
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_9

    .line 711
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    :cond_9
    move v4, v5

    .line 713
    goto/16 :goto_0

    .line 565
    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_9
        0x2711 -> :sswitch_8
        0x102001f -> :sswitch_0
        0x1020020 -> :sswitch_2
        0x1020021 -> :sswitch_4
        0x1020022 -> :sswitch_6
        0x1020024 -> :sswitch_a
        0x1020028 -> :sswitch_1
        0x1020408 -> :sswitch_3
        0x1020409 -> :sswitch_5
        0x102040a -> :sswitch_7
    .end sparse-switch
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 5
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1160
    const-string v1, "HtmlComposerView"

    const-string/jumbo v2, "onCreateInputConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mEmojiIsActive:Z

    if-ne v4, v1, :cond_0

    .line 1163
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1164
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "allowEmoji"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1165
    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 1168
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    if-nez v1, :cond_1

    .line 1169
    const-string v1, "HtmlComposerView"

    const-string v2, "calling set Caret 0 0 "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    invoke-virtual {p0, v3, v3}, Landroid/webkitsec/HtmlComposerView;->setEditableSelection(II)V

    .line 1174
    :cond_1
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v1, v1, -0x10

    or-int/lit8 v1, v1, 0x1

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    or-int/lit16 v1, v1, 0x4000

    const v2, 0x8000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 1181
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v1, v1, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 1182
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v1, v1, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 1184
    iget v1, p0, Landroid/webkitsec/HtmlComposerView;->imeOptions:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 1185
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 1187
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->sendEventToUpdateToolbar()V

    .line 1189
    const-string v1, "HtmlComposerView"

    const-string/jumbo v2, "onCreateInputConnection End"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    return-object v1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 527
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 529
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    if-eqz v1, :cond_0

    .line 530
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnStylusButtonEventListener(Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;)V

    .line 531
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mStylusEventListener:Landroid/webkitsec/HtmlComposerView$StylusEventListener;

    .line 534
    :cond_0
    invoke-super {p0}, Landroid/webkitsec/WebView;->onDetachedFromWindow()V

    .line 535
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 24
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 1208
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    .line 1210
    .local v3, "action":I
    packed-switch v3, :pswitch_data_0

    .line 1312
    const/16 v19, 0x0

    :goto_0
    return v19

    .line 1212
    :pswitch_0
    const-string v19, "HtmlComposerView"

    const-string v20, "DragEvent.ACTION_DRAG_STARTED"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isFocused()Z

    move-result v19

    if-nez v19, :cond_0

    .line 1215
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->resetSelection()V

    .line 1216
    const/16 v19, 0x1

    goto :goto_0

    .line 1219
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->getSelectedText()Ljava/lang/String;

    move-result-object v15

    .line 1221
    .local v15, "selectedText":Ljava/lang/String;
    if-eqz v15, :cond_1

    .line 1222
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->saveSelection()V

    .line 1223
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->setCursorFromRangeSelection()V

    .line 1226
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v17

    .line 1227
    .local v17, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v18

    .line 1229
    .local v18, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v19

    if-eqz v19, :cond_2

    .line 1230
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v19

    const/16 v20, 0x21c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v21, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v22, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v22

    invoke-virtual/range {v19 .. v22}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    .line 1233
    :cond_2
    const/16 v19, 0x1

    goto :goto_0

    .line 1235
    .end local v15    # "selectedText":Ljava/lang/String;
    .end local v17    # "x":F
    .end local v18    # "y":F
    :pswitch_1
    const-string v19, "HtmlComposerView"

    const-string v20, "DragEvent.ACTION_DRAG_ENTERED"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isFocused()Z

    move-result v19

    if-nez v19, :cond_3

    .line 1237
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    .line 1238
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestFocus()Z

    .line 1240
    :cond_3
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 1242
    :pswitch_2
    const-string v19, "HtmlComposerView"

    const-string v20, "DragEvent.ACTION_DRAG_LOCATION"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v17

    .line 1244
    .restart local v17    # "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v18

    .line 1246
    .restart local v18    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v19

    if-eqz v19, :cond_4

    .line 1247
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v19

    const/16 v20, 0x21c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v21, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v22, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v22

    invoke-virtual/range {v19 .. v22}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    .line 1248
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 1251
    :cond_4
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 1253
    .end local v17    # "x":F
    .end local v18    # "y":F
    :pswitch_3
    const-string v19, "HtmlComposerView"

    const-string v20, "DragEvent.ACTION_DRAG_EXITED"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 1256
    :pswitch_4
    const-string v19, "HtmlComposerView"

    const-string v20, "DragEvent.ACTION_DROP"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v17

    .line 1258
    .restart local v17    # "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v18

    .line 1260
    .restart local v18    # "y":F
    const/4 v12, 0x0

    .local v12, "plainText":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "htmlText":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1261
    .local v4, "contentUri":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 1262
    .local v13, "sbForHTML":Ljava/lang/StringBuffer;
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 1264
    .local v14, "sbForText":Ljava/lang/StringBuffer;
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v6

    .line 1265
    .local v6, "data":Landroid/content/ClipData;
    invoke-virtual {v6}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v7

    .line 1267
    .local v7, "description":Landroid/content/ClipDescription;
    invoke-virtual {v6}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    .line 1269
    .local v5, "count":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v5, :cond_a

    .line 1270
    invoke-virtual {v6, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v11

    .line 1272
    .local v11, "item":Landroid/content/ClipData$Item;
    if-nez v11, :cond_6

    .line 1269
    :cond_5
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1274
    :cond_6
    invoke-virtual {v11}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_8

    .line 1275
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    const-string v19, "HtmlComposerView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "DragEvent.ACTION_DROP HTML = ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v11}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    :cond_7
    invoke-virtual {v11}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    goto :goto_2

    .line 1278
    :cond_8
    const/16 v16, 0x0

    .line 1280
    .local v16, "str":Ljava/lang/CharSequence;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 1284
    :goto_3
    if-eqz v16, :cond_5

    .line 1285
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    const-string v19, "HtmlComposerView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "DragEvent.ACTION_DROP sbForText = ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    :cond_9
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v14

    goto :goto_2

    .line 1281
    :catch_0
    move-exception v8

    .line 1282
    .local v8, "ex":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 1291
    .end local v8    # "ex":Ljava/lang/Exception;
    .end local v11    # "item":Landroid/content/ClipData$Item;
    .end local v16    # "str":Ljava/lang/CharSequence;
    :cond_a
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v19

    if-lez v19, :cond_c

    .line 1292
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v20, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->dropTheDraggedText(II)V

    .line 1294
    const-string v19, "InsertHtml"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1302
    :cond_b
    :goto_4
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerView;->sendEventToUpdateToolbar()V

    .line 1304
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 1295
    :cond_c
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->length()I

    move-result v19

    if-lez v19, :cond_b

    .line 1296
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1297
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v20, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/webkitsec/WebViewClassic;->viewToContentDimension(I)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->dropTheDraggedText(II)V

    .line 1298
    invoke-static {v12}, Landroid/webkitsec/HtmlComposerViewUtils;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1299
    const-string v19, "InsertHtml"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_4

    .line 1306
    .end local v4    # "contentUri":Ljava/lang/String;
    .end local v5    # "count":I
    .end local v6    # "data":Landroid/content/ClipData;
    .end local v7    # "description":Landroid/content/ClipDescription;
    .end local v9    # "htmlText":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v12    # "plainText":Ljava/lang/String;
    .end local v13    # "sbForHTML":Ljava/lang/StringBuffer;
    .end local v14    # "sbForText":Ljava/lang/StringBuffer;
    .end local v17    # "x":F
    .end local v18    # "y":F
    :pswitch_5
    const-string v19, "HtmlComposerView"

    const-string v20, "DragEvent.ACTION_DRAG_ENDED"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 1210
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1197
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    iget v0, v0, Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;->mGranularity:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1198
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "HtmlComposerView  --- Ondraw  -clearSelection"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1199
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    .line 1200
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearSelection()V

    .line 1202
    :cond_0
    invoke-super {p0, p1}, Landroid/webkitsec/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1203
    return-void
.end method

.method public onEditorAction(I)V
    .locals 3
    .param p1, "actionCode"    # I

    .prologue
    const/16 v2, 0x82

    .line 3883
    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 3884
    invoke-virtual {p0, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 3885
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 3886
    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3887
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3894
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    const-string v1, "InsertText"

    const-string v2, "\n"

    invoke-virtual {p0, v1, v2}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3895
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 5
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1319
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFocusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    invoke-super {p0, p1, p2, p3}, Landroid/webkitsec/WebView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1321
    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->isViewInFocus:Z

    .line 1322
    if-nez p1, :cond_2

    .line 1323
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    .line 1325
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->hideInsertionController()V

    .line 1328
    invoke-virtual {p0, v4}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    .line 1331
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->DoClearImageSelection()V

    .line 1333
    invoke-virtual {p0, v4}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 1347
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    .line 1348
    invoke-virtual {p0, v3}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1350
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    if-ne v4, v0, :cond_1

    .line 1351
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    .line 1352
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->clearActionModes()V

    .line 1354
    :cond_1
    return-void

    .line 1335
    :cond_2
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mPasteListener:Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebClipboard;->setPasteListener(Landroid/webkitsec/WebClipboard$OnPasteFromSelectionUIListener;)V

    .line 1336
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebClipboard;->updateClipboardUI()V

    .line 1339
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getBodyHTML()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1340
    const-string v0, "HtmlComposerView"

    const-string/jumbo v1, "onFocus calling invokeTexttoSpeech()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->invokeTexttoSpeech(I)V

    goto :goto_0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 1359
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.feature.hovering_ui"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v6, :cond_0

    .line 1361
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    .line 1362
    const-string v3, "HtmlComposerView"

    const-string/jumbo v4, "onHoverEvent ACTION_HOVER_ENTER"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    new-instance v3, Landroid/webkitsec/HtmlComposerView$2;

    invoke-direct {v3, p0}, Landroid/webkitsec/HtmlComposerView$2;-><init>(Landroid/webkitsec/HtmlComposerView;)V

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

    .line 1382
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1383
    const/4 v3, -0x1

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mPrevRHIResource:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1434
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/webkitsec/WebView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 1384
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    .line 1385
    const-string v3, "HtmlComposerView"

    const-string/jumbo v4, "onHoverEvent ACTION_HOVER_EXIT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_2

    .line 1387
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1388
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mSetSPenIconCursorRunnable:Ljava/lang/Runnable;

    .line 1390
    :cond_2
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    goto :goto_0

    .line 1430
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1391
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    .line 1392
    const-string v3, "HtmlComposerView"

    const-string/jumbo v4, "onHoverEvent ACTION_HOVER_MOVE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 1395
    .local v0, "contentX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 1397
    .local v1, "contentY":I
    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->isHoverPointWithinIconAreaForResizing(II)Z

    move-result v3

    if-ne v6, v3, :cond_5

    .line 1398
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "HtmlComposerView"

    const-string/jumbo v4, "onHoverEvent true == isHoverPointWithinIconAreaForResizing"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    :cond_4
    const/4 v2, -0x1

    .line 1402
    .local v2, "pointerIconType":I
    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mPrevRHIResource:I

    packed-switch v3, :pswitch_data_0

    .line 1420
    :goto_1
    if-eq v5, v2, :cond_0

    .line 1421
    const/4 v3, -0x1

    invoke-static {v2, v3}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    goto :goto_0

    .line 1404
    :pswitch_0
    const/16 v2, 0x8

    .line 1405
    goto :goto_1

    .line 1408
    :pswitch_1
    const/16 v2, 0x9

    .line 1409
    goto :goto_1

    .line 1412
    :pswitch_2
    const/4 v2, 0x7

    .line 1413
    goto :goto_1

    .line 1416
    :pswitch_3
    const/4 v2, 0x6

    goto :goto_1

    .line 1424
    .end local v2    # "pointerIconType":I
    :cond_5
    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mPrevRHIResource:I

    if-eq v5, v3, :cond_0

    .line 1425
    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    .line 1426
    const/4 v3, -0x1

    iput v3, p0, Landroid/webkitsec/HtmlComposerView;->mPrevRHIResource:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1402
    nop

    :pswitch_data_0
    .packed-switch 0x1080700
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1014
    invoke-super {p0, p1}, Landroid/webkitsec/WebView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1016
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "HtmlComposerView"

    const-string/jumbo v2, "onInitializeAccessibilityEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_0
    const-class v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 1020
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_2

    .line 1021
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "HtmlComposerView"

    const-string/jumbo v2, "onInitializeAccessibilityEvent selection changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :cond_1
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v1, v1, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 1023
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iget v1, v1, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 1024
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1025
    .local v0, "curText":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 1027
    .end local v0    # "curText":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1031
    invoke-super {p0, p1}, Landroid/webkitsec/WebView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1033
    const-class v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1035
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1037
    .local v0, "curText":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 1038
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    .line 1040
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1041
    const/16 v1, 0x100

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1042
    const/16 v1, 0x200

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1043
    const/16 v1, 0x1f

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 1050
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1051
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1052
    const/high16 v1, 0x20000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1054
    :cond_1
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->canCopy()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1055
    const/16 v1, 0x4000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1057
    :cond_2
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->canPaste()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1058
    const v1, 0x8000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1060
    :cond_3
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->canCut()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1061
    const/high16 v1, 0x10000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1064
    :cond_4
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    .line 1451
    iget-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 1452
    const-string v6, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "htmlcompor onKeyDown "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    :cond_0
    iget-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v5, v6, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 1462
    iput-boolean v9, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 1468
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1475
    const/16 v6, 0x37

    if-eq p1, v6, :cond_2

    const/16 v6, 0x3e

    if-ne p1, v6, :cond_3

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v6

    if-eq v6, v5, :cond_4

    const/4 v6, 0x2

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-static {v7}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result v7

    if-eq v6, v7, :cond_4

    :cond_3
    const/16 v6, 0x3f

    if-ne p1, v6, :cond_5

    .line 1478
    :cond_4
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 1481
    :cond_5
    sparse-switch p1, :sswitch_data_0

    .line 1512
    :goto_0
    iput v9, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    .line 1513
    iput v9, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    .line 1515
    const/4 v2, 0x0

    .line 1517
    .local v2, "prevSpanTextBeforeStartOffset":Ljava/lang/String;
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    const/16 v7, 0xf

    invoke-virtual {v6, v7, v9}, Landroid/webkitsec/HtmlComposerInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1519
    .local v4, "spannableString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 1521
    .local v3, "spannableChar":[C
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1523
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, v9, v4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1524
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    iput v6, p0, Landroid/webkitsec/HtmlComposerView;->prevlen:I

    .line 1525
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->prevlen:I

    iput v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    .line 1526
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->prevlen:I

    iput v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    .line 1528
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    if-ltz v6, :cond_6

    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    if-ltz v6, :cond_6

    .line 1530
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    invoke-static {v6, v7, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1533
    :cond_6
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    if-lt v6, v5, :cond_7

    .line 1535
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v6, v7, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1538
    :cond_7
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->mTextInput:Landroid/text/method/TextKeyListener;

    if-eqz v6, :cond_e

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->mTextInput:Landroid/text/method/TextKeyListener;

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6, p0, v7, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1540
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->prevlen:I

    sub-int v1, v6, v7

    .line 1542
    .local v1, "diff":I
    if-eqz v1, :cond_8

    .line 1543
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 1545
    :cond_8
    if-lez v1, :cond_d

    .line 1547
    if-eqz v2, :cond_c

    .line 1549
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v7, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v6, v7, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_b

    .line 1551
    const-string v6, ""

    invoke-virtual {p0, v6, v5}, Landroid/webkitsec/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 1552
    const-string v6, "InsertText"

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v8, v8, -0x1

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v9, v1

    invoke-virtual {v7, v8, v9}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1553
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 1567
    :goto_1
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    add-int/2addr v6, v1

    iput v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    .line 1568
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v6, v1

    iput v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    .line 1577
    :cond_9
    :goto_2
    if-eqz v1, :cond_a

    .line 1578
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v6}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    :cond_a
    move v0, v5

    .line 1584
    .end local v1    # "diff":I
    .end local v2    # "prevSpanTextBeforeStartOffset":Ljava/lang/String;
    .end local v3    # "spannableChar":[C
    .end local v4    # "spannableString":Ljava/lang/String;
    :goto_3
    return v0

    .line 1484
    :sswitch_0
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkitsec/WebClipboard;->launchClipboardUI()V

    move v0, v5

    .line 1485
    goto :goto_3

    .line 1489
    :sswitch_1
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    goto/16 :goto_0

    .line 1494
    :sswitch_2
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    goto/16 :goto_0

    .line 1498
    :sswitch_3
    const-string v6, "DeleteForward"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1499
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    move v0, v5

    .line 1500
    goto :goto_3

    .line 1503
    :sswitch_4
    invoke-super {p0, p1, p2}, Landroid/webkitsec/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1504
    .local v0, "bResult":Z
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v6}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 1505
    invoke-virtual {p0, v5}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    goto :goto_3

    .end local v0    # "bResult":Z
    :sswitch_5
    move v0, v5

    .line 1509
    goto :goto_3

    .line 1557
    .restart local v1    # "diff":I
    .restart local v2    # "prevSpanTextBeforeStartOffset":Ljava/lang/String;
    .restart local v3    # "spannableChar":[C
    .restart local v4    # "spannableString":Ljava/lang/String;
    :cond_b
    const-string v6, "InsertText"

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v9, v1

    invoke-virtual {v7, v8, v9}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1558
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    goto :goto_1

    .line 1563
    :cond_c
    const-string v6, "InsertText"

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v9, v1

    invoke-virtual {v7, v8, v9}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1564
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    goto :goto_1

    .line 1569
    :cond_d
    if-gez v1, :cond_9

    .line 1571
    const-string v6, "InsertText"

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v8, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1572
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 1573
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    .line 1574
    iget v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    goto/16 :goto_2

    .line 1584
    .end local v1    # "diff":I
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/webkitsec/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_3

    .line 1481
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_5
        0x3b -> :sswitch_1
        0x3c -> :sswitch_1
        0x43 -> :sswitch_4
        0x70 -> :sswitch_3
        0x71 -> :sswitch_2
        0x72 -> :sswitch_2
        0xe8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1441
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HtmlComposerView onKeyLongPress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 1445
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1589
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkitsec/WebClipboard;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1591
    const-string v1, "HtmlComposerView"

    const-string v2, " onKeyPreIme-dismiss Clipboard "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkitsec/WebClipboard;->dismissClipboardUI()V

    .line 1593
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    .line 1596
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 1601
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1602
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "htmlcompor onKeyUp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1646
    :goto_0
    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    if-ltz v3, :cond_1

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    if-ltz v3, :cond_1

    .line 1648
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    invoke-static {v3, v4, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1651
    :cond_1
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mTextInput:Landroid/text/method/TextKeyListener;

    if-eqz v3, :cond_5

    .line 1653
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mTextInput:Landroid/text/method/TextKeyListener;

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, p0, v4, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1657
    :goto_1
    :sswitch_0
    return v2

    .line 1608
    :sswitch_1
    const/16 v3, 0x3b

    if-ne v3, p1, :cond_2

    .line 1610
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 1612
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v0

    .line 1613
    .local v0, "accessoryKeyboardState":I
    and-int/lit8 v3, v0, 0x7

    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 1614
    invoke-virtual {p0, v2}, Landroid/webkitsec/HtmlComposerView;->setSelectionHandle(Z)V

    .line 1615
    invoke-virtual {p0, v6}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 1616
    invoke-virtual {p0, v6}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    .line 1620
    .end local v0    # "accessoryKeyboardState":I
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    iput-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    goto :goto_0

    .line 1624
    :sswitch_2
    iput-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->mCtrlKeyIsPressed:Z

    goto :goto_0

    .line 1629
    :sswitch_3
    iget-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-eqz v3, :cond_4

    .line 1630
    const-string v3, "HtmlComposerView"

    const-string v4, "HtmlComposerView  --- Calling cleaselection due to image delete"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1632
    const-string v3, "image"

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->textSelected:Ljava/lang/String;

    .line 1633
    const-string v3, "HtmlComposerView"

    const-string v4, "HtmlComposerView  --- Calling cleaselection due to image delete"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    const v3, 0x1020020

    invoke-virtual {p0, v3}, Landroid/webkitsec/HtmlComposerView;->invokeTexttoSpeech(I)V

    .line 1636
    :cond_3
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    .line 1637
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/webkitsec/WebViewClassic;->mImageCopyInfo:Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;

    goto :goto_0

    .line 1639
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/webkitsec/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1

    .line 1657
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/webkitsec/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1

    .line 1605
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x3b -> :sswitch_1
        0x3c -> :sswitch_1
        0x43 -> :sswitch_3
        0x70 -> :sswitch_0
        0x71 -> :sswitch_2
        0x72 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1068
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1070
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "HtmlComposerView"

    const-string/jumbo v2, "onPopulateAccessibilityEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1073
    .local v0, "textForAccessibility":Ljava/lang/CharSequence;
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPopulateAccessibilityEvent textForAccessibility = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 1076
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPopulateAccessibilityEvent event.getText = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    :cond_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1078
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPopulateAccessibilityEvent event.getText after= ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :cond_3
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "HtmlComposerView"

    const-string/jumbo v2, "onPopulateAccessibilityEvent End"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    :cond_4
    return-void
.end method

.method public onRecieveWebViewDoubleTapped()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3990
    const-string v1, "HtmlComposerView"

    const-string/jumbo v2, "onRecieveWebViewDoubleTapped()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3993
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressed:Z

    .line 3996
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v0

    .line 3997
    .local v0, "selectionType":I
    if-ne v3, v0, :cond_0

    .line 3998
    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForSelectionCallback:Z

    .line 4003
    :goto_0
    return-void

    .line 4000
    :cond_0
    invoke-virtual {p0, v3}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    goto :goto_0
.end method

.method public onRecieveWebViewSelectionChanged()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 4006
    const-string v2, "HtmlComposerView"

    const-string/jumbo v3, "onRecieveWebViewSelectionChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4009
    iput-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressed:Z

    .line 4011
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v1

    .line 4012
    .local v1, "selectionType":I
    if-ne v4, v1, :cond_4

    .line 4013
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 4015
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v5, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 4016
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v5, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    .line 4017
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 4020
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mIsPenSelection:Z

    if-eqz v2, :cond_0

    .line 4021
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->playPenSelectionVibrator()Z

    .line 4025
    :cond_0
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4026
    const/16 v2, 0x2000

    invoke-virtual {p0, v2}, Landroid/webkitsec/HtmlComposerView;->sendAccessibilityEvent(I)V

    .line 4036
    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getDCHandlerLastHandleType()I

    move-result v0

    .line 4038
    .local v0, "handleType":I
    if-ne v0, v4, :cond_5

    .line 4039
    const/16 v2, 0x13

    invoke-virtual {p0, v2}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(I)V

    .line 4044
    :cond_2
    :goto_1
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->sendEventToUpdateToolbar()V

    .line 4047
    if-ne v4, v1, :cond_6

    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForSelectionCallback:Z

    if-ne v4, v2, :cond_6

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getWebTextSelectionControls()Landroid/webkitsec/WebTextSelectionControls;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 4048
    iput-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForSelectionCallback:Z

    .line 4049
    invoke-virtual {p0, v6}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    .line 4054
    :cond_3
    :goto_2
    return-void

    .line 4028
    .end local v0    # "handleType":I
    :cond_4
    if-nez v1, :cond_1

    .line 4029
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->isInBatchEditMode()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getComposingState()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4030
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v5, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 4031
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v5, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    .line 4032
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto :goto_0

    .line 4040
    .restart local v0    # "handleType":I
    :cond_5
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 4041
    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(I)V

    goto :goto_1

    .line 4050
    :cond_6
    if-ne v4, v1, :cond_7

    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    if-eqz v2, :cond_8

    :cond_7
    if-eq v4, v1, :cond_3

    .line 4051
    :cond_8
    invoke-virtual {p0, v4}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    goto :goto_2
.end method

.method public onRecieveWebviewLongTouchUp()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3946
    const-string v2, "HtmlComposerView"

    const-string/jumbo v3, "onRecieveWebviewLongTouchUp() Has Long-pressed!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3948
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    if-nez v2, :cond_0

    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    .line 3954
    :cond_0
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressed:Z

    .line 3956
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isViewInFocus:Z

    if-nez v2, :cond_2

    .line 3957
    invoke-virtual {p0, v6}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    .line 3958
    const-string v2, "HtmlComposerView"

    const-string/jumbo v3, "onRecieveWebviewLongTouchUp() this view has already lost the focus"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3981
    :cond_1
    :goto_0
    return-void

    .line 3963
    :cond_2
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3965
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 3967
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imm active  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->getTargetView()Landroid/webkitsec/HtmlComposerView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3968
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->SendInitComposing()V

    .line 3970
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 3971
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->displaySoftKeyboardForHtmlComposer()V

    .line 3973
    :cond_3
    invoke-virtual {p0, v6}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 3976
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v1

    .line 3977
    .local v1, "selectionType":I
    if-ne v5, v1, :cond_1

    .line 3978
    iput-boolean v5, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressForSelectionCallback:Z

    goto :goto_0
.end method

.method public onRecieveWebviewShortTouchUp()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3898
    const-string v2, "HtmlComposerView"

    const-string/jumbo v3, "onRecieveWebviewShortTouchUp() Has Short-pressed!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3900
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isViewInFocus:Z

    if-nez v2, :cond_1

    .line 3901
    invoke-virtual {p0, v6}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    .line 3902
    const-string v2, "HtmlComposerView"

    const-string/jumbo v3, "onRecieveWebviewShortTouchUp() this view has already lost the focus"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3943
    :cond_0
    :goto_0
    return-void

    .line 3906
    :cond_1
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-ne v5, v2, :cond_2

    .line 3907
    const-string v2, "HtmlComposerView"

    const-string/jumbo v3, "onRecieveWebviewShortTouchUp() !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3908
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    .line 3909
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3910
    invoke-virtual {p0, v5}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    .line 3913
    :cond_2
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3915
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 3917
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imm active  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->getTargetView()Landroid/webkitsec/HtmlComposerView;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3919
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressed:Z

    if-eq v5, v2, :cond_3

    .line 3920
    invoke-virtual {v0, p0, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 3929
    :goto_1
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->SendInitComposing()V

    .line 3931
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v7, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    .line 3932
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    iput v7, v2, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    .line 3933
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 3935
    invoke-virtual {p0, v6}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 3938
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v1

    .line 3939
    .local v1, "selectionType":I
    if-eq v5, v1, :cond_0

    .line 3940
    invoke-virtual {p0, v5}, Landroid/webkitsec/HtmlComposerView;->sendSelectionChangeEvent(I)V

    goto :goto_0

    .line 3926
    .end local v1    # "selectionType":I
    :cond_3
    iput-boolean v6, p0, Landroid/webkitsec/HtmlComposerView;->mLongPressed:Z

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    .line 1662
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->getContentX(I)I

    move-result v2

    .line 1663
    .local v2, "contentX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->getContentY(I)I

    move-result v3

    .line 1664
    .local v3, "contentY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v4, v0

    .line 1665
    .local v4, "rawX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v5, v0

    .line 1666
    .local v5, "rawY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 1668
    .local v1, "action":I
    const-string v0, "HtmlComposerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onTouchEvent  MotionEvent Action = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->isTouchedOutside(II)Z

    move-result v0

    if-ne v9, v0, :cond_1

    .line 1671
    const-string v0, "HtmlComposerView"

    const-string v7, "hasFocus() == false && isTouchedOutside() == true"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    const/4 v6, 0x0

    .line 1689
    :cond_0
    :goto_0
    return v6

    :cond_1
    move-object v0, p0

    .line 1675
    invoke-virtual/range {v0 .. v5}, Landroid/webkitsec/HtmlComposerView;->handle_onTouchEvent(IIIII)Z

    move-result v6

    .line 1677
    .local v6, "ret":Z
    if-nez v6, :cond_0

    .line 1678
    const-string v0, "HtmlComposerView"

    const-string/jumbo v7, "onTouchEvent ret == false"

    invoke-static {v0, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    invoke-super {p0, p1}, Landroid/webkitsec/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 1681
    if-ne v9, v1, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-ne v9, v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v0

    if-nez v0, :cond_0

    .line 1682
    const-string v0, "HtmlComposerView"

    const-string/jumbo v7, "onTouchEvent After MotionEvent.ACTION_UP, selection is caret!!"

    invoke-static {v0, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    .line 1684
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1685
    invoke-virtual {p0, v9}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 8
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1982
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onWindowFocusChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    invoke-super {p0, p1}, Landroid/webkitsec/WebView;->onWindowFocusChanged(Z)V

    .line 1984
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isViewInFocus:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 1985
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 1987
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-nez v2, :cond_0

    .line 1988
    const-string v2, "HtmlComposerView"

    const-string v3, "false == isImageSelected "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    invoke-virtual {p0, v6}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    .line 1992
    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebClipboard;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1994
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mPasteListener:Landroid/webkitsec/HtmlComposerView$SelectionUIPasteListener;

    invoke-virtual {v2, v3}, Landroid/webkitsec/WebClipboard;->setPasteListener(Landroid/webkitsec/WebClipboard$OnPasteFromSelectionUIListener;)V

    .line 1995
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebClipboard;->updateClipboardUI()V

    .line 1998
    :cond_1
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isViewInFocus:Z

    if-nez v2, :cond_2

    .line 2000
    invoke-virtual {p0, v7}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    .line 2002
    :cond_2
    if-nez p1, :cond_5

    .line 2004
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->hideInsertionController()V

    .line 2006
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mSymKeyIsPressed:Z

    if-eq v6, v2, :cond_3

    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v6, v2, :cond_4

    .line 2008
    :cond_3
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->prevlen:I

    .line 2009
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 2011
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 2012
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onWindowFocusChanged WindowFocus = false, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    :cond_4
    :goto_0
    return-void

    .line 2018
    :cond_5
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mSymKeyIsPressed:Z

    if-eq v6, v2, :cond_6

    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v6, v2, :cond_b

    .line 2020
    :cond_6
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_7

    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onWindowFocusChanged WindowFocus = true, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    :cond_7
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onWindowFocusChanged spanComposerText count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCurSelStart= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCurSelEnd= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->prevlen:I

    sub-int v0, v2, v3

    .line 2026
    .local v0, "diff":I
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2035
    if-lez v0, :cond_d

    .line 2037
    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    if-ltz v2, :cond_8

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v2, v0

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-gt v2, v3, :cond_8

    .line 2038
    const-string v2, "InsertText"

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2039
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 2054
    :cond_8
    :goto_1
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 2056
    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelStart:I

    .line 2057
    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    .line 2059
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mSymKeyIsPressed:Z

    if-ne v6, v2, :cond_9

    .line 2060
    iput-boolean v7, p0, Landroid/webkitsec/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 2061
    :cond_9
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v6, v2, :cond_a

    .line 2062
    iput-boolean v7, p0, Landroid/webkitsec/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 2064
    :cond_a
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkitsec/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 2067
    .end local v0    # "diff":I
    :cond_b
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    if-ne v6, v2, :cond_c

    .line 2068
    iput-boolean v7, p0, Landroid/webkitsec/HtmlComposerView;->isContextMenuVisible:Z

    .line 2071
    :cond_c
    sget v2, Landroid/webkitsec/HtmlComposerView;->operSel:I

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2072
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2073
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x500

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2076
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2041
    .end local v1    # "msg":Landroid/os/Message;
    .restart local v0    # "diff":I
    :cond_d
    if-nez v0, :cond_e

    .line 2042
    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    if-lez v2, :cond_8

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    iget v3, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v3, v4, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_8

    .line 2045
    const-string v2, ""

    invoke-virtual {p0, v2, v6}, Landroid/webkitsec/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 2046
    const-string v2, "InsertText"

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v4, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Landroid/webkitsec/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2047
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    goto/16 :goto_1

    .line 2049
    :cond_e
    const/4 v2, -0x1

    if-ne v0, v2, :cond_8

    .line 2050
    const-string v2, ""

    invoke-virtual {p0, v2, v6}, Landroid/webkitsec/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 2051
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    goto/16 :goto_1
.end method

.method public outlineDrawRect(Landroid/content/Context;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imagetRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x1

    .line 5144
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearImageSelection()V

    .line 5145
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->finishComposingText()Z

    .line 5146
    invoke-virtual {p0, p1, p2}, Landroid/webkitsec/HtmlComposerView;->initImageResizeControls(Landroid/content/Context;Landroid/graphics/Rect;)V

    .line 5147
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 5148
    .local v0, "re":Landroid/graphics/RectF;
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 5150
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 5151
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after init outline Rect path : left= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " top= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " right= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bottom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5154
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 5155
    .local v1, "reh":Landroid/graphics/RectF;
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v2, v1, v5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 5157
    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 5158
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after init outline Rect path : left= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " top= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " right= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bottom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5161
    :cond_1
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->outLinePath:Landroid/graphics/Path;

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->handlesPath:Landroid/graphics/Path;

    invoke-direct {p0, p2, v2, v3}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffsetImage(Landroid/graphics/Rect;Landroid/graphics/Path;Landroid/graphics/Path;)V

    .line 5162
    return-void
.end method

.method public paste()V
    .locals 2

    .prologue
    .line 2268
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->DoClearImageSelection()V

    .line 2269
    const-string v0, "Paste"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2270
    return-void
.end method

.method public playPenSelectionVibrator()Z
    .locals 1

    .prologue
    .line 2554
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mPenSelectVibrator:Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;

    if-nez v0, :cond_0

    .line 2555
    new-instance v0, Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;

    invoke-direct {v0, p0}, Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;-><init>(Landroid/webkitsec/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mPenSelectVibrator:Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;

    .line 2558
    :cond_0
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mPenSelectVibrator:Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;

    if-eqz v0, :cond_1

    .line 2559
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mPenSelectVibrator:Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView$PenSelectVibrator;->playVibrator()V

    .line 2560
    const/4 v0, 0x1

    .line 2562
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public redo()V
    .locals 2

    .prologue
    .line 2273
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2274
    const-string v0, "Redo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2275
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 2276
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2277
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 2278
    return-void
.end method

.method public registerNotificationListener(Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;)V
    .locals 0
    .param p1, "listener"    # Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    .prologue
    .line 2281
    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 2282
    return-void
.end method

.method public removeNotificationListener()V
    .locals 1

    .prologue
    .line 2285
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mNotificationCallback:Landroid/webkitsec/HtmlComposerView$HtmlComposerNotificationToApp;

    .line 2286
    return-void
.end method

.method public resetSelection()V
    .locals 2

    .prologue
    .line 4057
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4062
    :cond_0
    :goto_0
    return-void

    .line 4059
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4060
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x22f

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method public restoreSelection()V
    .locals 2

    .prologue
    .line 4065
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4071
    :cond_0
    :goto_0
    return-void

    .line 4067
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4068
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x214

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    .line 4069
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    goto :goto_0
.end method

.method public saveSelection()V
    .locals 2

    .prologue
    .line 4074
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4078
    :cond_0
    :goto_0
    return-void

    .line 4076
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4077
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x215

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method public selectAll()V
    .locals 2

    .prologue
    .line 2289
    const-string v0, "SelectAll"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2290
    return-void
.end method

.method public selectBWStartAndEnd(IIII)V
    .locals 4
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "endX"    # I
    .param p4, "endY"    # I

    .prologue
    .line 5020
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5028
    :cond_0
    :goto_0
    return-void

    .line 5022
    :cond_1
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selectBWStartAndEnd start = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], startY = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], endX = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], endY = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5024
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5026
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5027
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v1

    const/16 v2, 0x22a

    invoke-virtual {v1, v2, v0}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public selectedType()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 4081
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4100
    :cond_0
    :goto_0
    return v3

    .line 4083
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4085
    .local v2, "selectedType":Ljava/lang/Integer;
    new-instance v1, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;-><init>(Landroid/webkitsec/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4086
    .local v1, "res":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 4087
    :try_start_0
    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 4088
    iget-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v3

    const/16 v4, 0x213

    invoke-virtual {v3, v4, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4093
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4098
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4100
    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    .line 4090
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 4098
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 4094
    :catch_0
    move-exception v0

    .line 4095
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "HtmlComposerView"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4096
    const-string v3, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0
    .param p1, "eventType"    # I

    .prologue
    .line 1093
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1094
    return-void
.end method

.method sendAccessibilityEventTypeViewTextChanged(IIILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "fromIndex"    # I
    .param p2, "removedCount"    # I
    .param p3, "addedCount"    # I
    .param p4, "beforeText"    # Ljava/lang/CharSequence;

    .prologue
    .line 1128
    const/16 v1, 0x10

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1130
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 1131
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityRecord;->setRemovedCount(I)V

    .line 1132
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    .line 1133
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityRecord;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 1134
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1135
    return-void
.end method

.method protected sendSelectionChangeEvent(I)V
    .locals 2
    .param p1, "event"    # I

    .prologue
    .line 5049
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 5050
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x504

    iput v1, v0, Landroid/os/Message;->what:I

    .line 5051
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 5053
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    if-eqz v1, :cond_0

    .line 5054
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerView;->myHandler:Landroid/webkitsec/HtmlComposerView$HCWHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5056
    :cond_0
    return-void
.end method

.method public setAutoTextSelection(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 3225
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebViewClassic;->setAutoTextSelection(Z)V

    .line 3226
    return-void
.end method

.method public setCaretForEdit(Z)V
    .locals 4
    .param p1, "active"    # Z

    .prologue
    const/16 v1, 0x8e

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4104
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4117
    :cond_0
    :goto_0
    return-void

    .line 4106
    :cond_1
    if-eqz p1, :cond_2

    .line 4107
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4108
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    goto :goto_0

    .line 4111
    :cond_2
    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    .line 4112
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4113
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    .line 4114
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x20b

    invoke-virtual {v0, v1, v3, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    goto :goto_0
.end method

.method public setComposingRegion(II)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 4120
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4139
    :cond_0
    :goto_0
    return-void

    .line 4121
    :cond_1
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 4123
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    .line 4124
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 4126
    .local v1, "sendTwoIntObj":Landroid/graphics/Point;
    monitor-enter v1

    .line 4127
    :try_start_0
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4128
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x21b

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4133
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4138
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 4130
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 4134
    :catch_0
    move-exception v0

    .line 4135
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for setEditableSelection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4136
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method declared-synchronized setComposingState(Z)V
    .locals 1
    .param p1, "isInComposingState"    # Z

    .prologue
    .line 387
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 393
    :goto_0
    monitor-exit p0

    return-void

    .line 390
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z

    .line 392
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCursorFromRangeSelection()V
    .locals 2

    .prologue
    .line 4146
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4152
    :cond_0
    :goto_0
    return-void

    .line 4148
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4149
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x22b

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    .line 4151
    :cond_2
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto :goto_0
.end method

.method public setDefaultFontSize(I)V
    .locals 3
    .param p1, "defaultFontSize"    # I

    .prologue
    .line 4155
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 4156
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    int-to-float v1, p1

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettings;->setDefaultFontSize(I)V

    .line 4160
    :goto_0
    return-void

    .line 4158
    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebSettings;->setDefaultFontSize(I)V

    goto :goto_0
.end method

.method public setEditableSelection(II)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 4163
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4184
    :cond_0
    :goto_0
    return-void

    .line 4164
    :cond_1
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 4166
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkitsec/HtmlComposerView;->isSelectionset:Z

    .line 4167
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 4169
    .local v1, "sendTwoIntObj":Landroid/graphics/Point;
    monitor-enter v1

    .line 4170
    :try_start_0
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4171
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v2

    const/16 v3, 0x1fe

    invoke-virtual {v2, v3, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4176
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4181
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4183
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto :goto_0

    .line 4173
    :cond_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 4181
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 4177
    :catch_0
    move-exception v0

    .line 4178
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "HtmlComposerView"

    const-string v3, "Caught exception while waiting for setEditableSelection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4179
    const-string v2, "HtmlComposerView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public setEmoji(Z)V
    .locals 3
    .param p1, "bIsActive"    # Z

    .prologue
    .line 4195
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " htmlcomposer setEmoji() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4196
    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->mEmojiIsActive:Z

    .line 4197
    return-void
.end method

.method public setHCVSelectionChangedCallback(Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;)V
    .locals 0
    .param p1, "listener"    # Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

    .prologue
    .line 4201
    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView;->mHCVSelectionChangedCallback:Landroid/webkitsec/HtmlComposerView$HCVSelectionChangedCallback;

    .line 4202
    return-void
.end method

.method public setImeOptions(I)V
    .locals 0
    .param p1, "imeOption"    # I

    .prologue
    .line 4206
    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->imeOptions:I

    .line 4207
    return-void
.end method

.method protected setInputConnection(Landroid/webkitsec/HtmlComposerInputConnection;)V
    .locals 0
    .param p1, "ic"    # Landroid/webkitsec/HtmlComposerInputConnection;

    .prologue
    .line 497
    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    .line 498
    return-void
.end method

.method public setLastKeyPadState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 6089
    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->bLastSoftKeyPadStateShowing:Z

    .line 6090
    return-void
.end method

.method public setMaxHtmlLength(I)V
    .locals 1
    .param p1, "maxHtmlLength"    # I

    .prologue
    .line 4244
    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->mMaxHtmlLength:I

    .line 4245
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->ignoreMaxLength:Z

    .line 4246
    return-void
.end method

.method public setOnInsertedImageHitListener(Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    .prologue
    .line 2299
    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView;->mInsertedImageHitListener:Landroid/webkitsec/HtmlComposerView$InsertedImageHitListener;

    .line 2300
    return-void
.end method

.method public setOnRichTextFormatChangedListener(Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

    .prologue
    .line 2294
    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView;->mRichTextFormatChangedListener:Landroid/webkitsec/HtmlComposerView$RichTextFormatChangedListener;

    .line 2295
    return-void
.end method

.method public setPageZoom(F)V
    .locals 3
    .param p1, "factor"    # F

    .prologue
    .line 4220
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4221
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPageZoom factor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4224
    :cond_0
    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->mZoomFactor:F

    .line 4225
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4226
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebClipboard;->setZoomFactorForPasting(F)V

    .line 4227
    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getWebClipboard()Landroid/webkitsec/WebClipboard;

    move-result-object v1

    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mScreenWidth:I

    iget v2, p0, Landroid/webkitsec/HtmlComposerView;->mScreenHeight:I

    if-gt v0, v2, :cond_3

    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mScreenWidth:I

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/webkitsec/WebClipboard;->setWidthForCopiedImage(I)V

    .line 4230
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4231
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x228

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4232
    :cond_2
    return-void

    .line 4227
    :cond_3
    iget v0, p0, Landroid/webkitsec/HtmlComposerView;->mScreenHeight:I

    goto :goto_0
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 4235
    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView;->mPrivateOptions:Ljava/lang/String;

    .line 4236
    return-void
.end method

.method public setRotationFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 6267
    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->mIsInRotation:Z

    .line 6268
    return-void
.end method

.method public setSelectionHandle(Z)V
    .locals 0
    .param p1, "isShown"    # Z

    .prologue
    .line 4210
    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->mSelectionHandlerIsShown:Z

    .line 4211
    return-void
.end method

.method public setShiftKeyState(Z)V
    .locals 0
    .param p1, "bIsPressed"    # Z

    .prologue
    .line 4187
    iput-boolean p1, p0, Landroid/webkitsec/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 4188
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 4239
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clear()V

    .line 4240
    sget-object v0, Landroid/webkitsec/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkitsec/HtmlComposerView$InsertionPosition;

    invoke-virtual {p0, p1, v0}, Landroid/webkitsec/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkitsec/HtmlComposerView$InsertionPosition;)Z

    .line 4241
    return-void
.end method

.method public textChangedForWatcher()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6139
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    .line 6140
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    const-string v1, ""

    invoke-interface {v0, v1, v2, v2, v2}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 6141
    :cond_0
    return-void
.end method

.method public textChangedForWatcher(I)V
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    const/4 v2, 0x0

    .line 6152
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    .line 6153
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    const-string v1, ""

    invoke-interface {v0, v1, v2, p1, v2}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 6155
    :cond_0
    return-void
.end method

.method public textChangedForWatcher(Z)V
    .locals 4
    .param p1, "isTextChanged"    # Z

    .prologue
    const/4 v1, 0x0

    .line 6144
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 6145
    .local v0, "temp":I
    :goto_0
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    if-eqz v2, :cond_0

    .line 6147
    iget-object v2, p0, Landroid/webkitsec/HtmlComposerView;->textWatcher:Landroid/text/TextWatcher;

    const-string v3, ""

    invoke-interface {v2, v3, v1, v1, v0}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 6149
    :cond_0
    return-void

    .end local v0    # "temp":I
    :cond_1
    move v0, v1

    .line 6144
    goto :goto_0
.end method

.method public textToSpeech(II)V
    .locals 2
    .param p1, "add"    # I
    .param p2, "remove"    # I

    .prologue
    .line 4278
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4279
    iput p1, p0, Landroid/webkitsec/HtmlComposerView;->mAdd:I

    .line 4280
    iput p2, p0, Landroid/webkitsec/HtmlComposerView;->mRemove:I

    .line 4281
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtmlComposerView"

    const-string/jumbo v1, "sendAccessbilityEvent [ 16]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4282
    :cond_0
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->sendAccessibilityEvent(I)V

    .line 4284
    :cond_1
    return-void
.end method

.method public toggleBold()V
    .locals 2

    .prologue
    .line 2304
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2310
    :goto_0
    return-void

    .line 2307
    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2308
    const-string v0, "Bold"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2309
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_0
.end method

.method public toggleItalic()V
    .locals 2

    .prologue
    .line 2313
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2319
    :goto_0
    return-void

    .line 2316
    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2317
    const-string v0, "Italic"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2318
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_0
.end method

.method public toggleUnderline()V
    .locals 2

    .prologue
    .line 2322
    iget-boolean v0, p0, Landroid/webkitsec/HtmlComposerView;->isInComposingState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2329
    :goto_0
    return-void

    .line 2325
    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2326
    const-string v0, "Underline"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2327
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    .line 2328
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    goto :goto_0
.end method

.method public translate()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 4250
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v3

    if-ne v6, v3, :cond_0

    .line 4251
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "com.sec.android.app.translator.TRANSLATE_RESULT"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4252
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4254
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4255
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.sec.android.app.translator.TRANSLATE_FOR_NON_ACTIVITY"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4256
    const-string/jumbo v3, "mode"

    const-string v4, "input"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4257
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->getSelectedHtmlText()Ljava/lang/String;

    move-result-object v2

    .line 4258
    .local v2, "selectedHTMLText":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 4259
    const-string/jumbo v3, "source_text"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4262
    const-string v3, "html_source_text"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4263
    const-string/jumbo v3, "use_broadcast_receiver"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "html_composer_view_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkitsec/HtmlComposerView;->mCaller:Ljava/lang/String;

    .line 4265
    const-string v3, "HtmlComposerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "translate() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerView;->mCaller:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4266
    const-string v3, "caller"

    iget-object v4, p0, Landroid/webkitsec/HtmlComposerView;->mCaller:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4267
    const-string v3, "auto_start_translation"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4268
    const-string v3, "client_id"

    const-string v4, "2k8BjWu5Wc"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4269
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4271
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4273
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "selectedHTMLText":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public undo()V
    .locals 2

    .prologue
    .line 2332
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->DoClearImageSelection()V

    .line 2333
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    .line 2334
    const-string v0, "Undo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2335
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    .line 2336
    invoke-direct {p0}, Landroid/webkitsec/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 2337
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkitsec/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    .line 2338
    return-void
.end method

.method public undoRedoStateReset()V
    .locals 2

    .prologue
    .line 4288
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4292
    :cond_0
    :goto_0
    return-void

    .line 4290
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4291
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x211

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method public unmarkWord(Ljava/lang/String;)V
    .locals 1
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 3188
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebViewClassic;->unmarkWord(Ljava/lang/String;)V

    .line 3189
    return-void
.end method

.method public updateIMSelectionToEditor(II)V
    .locals 2
    .param p1, "curSelStart"    # I
    .param p2, "curSelEnd"    # I

    .prologue
    .line 4295
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getNativeClass()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/WebView;->getSettings()Landroid/webkitsec/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4299
    :cond_0
    :goto_0
    return-void

    .line 4297
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4298
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerView;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebViewCore()Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x21a

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    goto :goto_0
.end method

.method public updateOutlineDrawRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "imagetRect"    # Landroid/graphics/Rect;

    .prologue
    .line 5175
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Landroid/webkitsec/HtmlComposerView;->outlineDrawRect(Landroid/content/Context;Landroid/graphics/Rect;)V

    .line 5176
    return-void
.end method
